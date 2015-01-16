class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.references :author, index: true

      t.timestamps null: false
    end
    add_foreign_key :books, :authors
  end
end
