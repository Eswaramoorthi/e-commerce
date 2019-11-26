class AddAttachmentMovieToVideos < ActiveRecord::Migration[5.2]
  def self.up
    change_table :videos do |t|
      t.attachment :movie
    end
  end

  def self.down
    remove_attachment :videos, :movie
  end
end
