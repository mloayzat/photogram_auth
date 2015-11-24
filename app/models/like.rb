class Like < ActiveRecord::Base
	validates :user_id, :presence => true, :uniqueness => { :scope => :photo }
	validates :photo_id, :presence => true

	validates :photo, :presence => true
	validates :user, :presence => true, :uniqueness => { :scope => :photo }

	belongs_to :user
	belongs_to :photo

end
