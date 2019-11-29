class Video < ApplicationRecord
	validates :name, presence: true   
	validates :price, presence: true   
	validates :description, presence: true 

	has_attached_file :movie, :styles => {}, :processor => [:transcoder]
	validates_attachment_content_type :movie, content_type: /\Avideo\/.*\z/
end
