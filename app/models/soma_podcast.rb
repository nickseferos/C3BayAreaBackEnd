class SomaPodcast < ApplicationRecord
	mount_uploader :media, PodcastUploader
	validates :media, presence: true
	validates :title, presence: true
	validates :speaker, presence: true
	validates :series, presence: true
	validates :description, presence: true
	validates :date, presence: true
end
