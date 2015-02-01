class Folder < ActiveRecord::Base
	has_ancestry
	belongs_to :user
end
