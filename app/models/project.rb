class Project < ApplicationRecord
	has_one_attached :image
	has_many_attached :images
	belongs_to :user
	has_many :users
	scope :latest, -> { order created_at: :desc }
end
