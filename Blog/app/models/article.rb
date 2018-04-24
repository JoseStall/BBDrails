class Article < ApplicationRecord
	has_many :category
	belongs_to :user
end
