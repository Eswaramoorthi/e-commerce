class Video < ApplicationRecord
	validates :name, presence: true   
	validates :price, presence: true   
	validates :description, presence: true 

	has_attached_file :movie, :styles => {}, :processor => [:transcoder]
	#has_attached_file :movie, :styles => { :medium => {:geometry => "640*480", :format  => 'mp4'}, :thumb => {:geometry => "640*480", :format => 'jpg', :time => 10}}, :processor => [:transcoder]
	validates_attachment_content_type :movie, content_type: /\Avideo\/.*\z/
end
