class Author < ActiveRecord::Base
	extend FriendlyId
  	friendly_id :slug_candidates, use: :slugged

	has_many :books, :dependent => :delete_all

	validates_presence_of :first_name, :last_name

	def slug_candidates
		[:first_name, :last_name]
	end
end
