class MainOrbit < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates :image, presence: true
	validates :alt_description, presence: true
end
