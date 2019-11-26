class AddClipToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :clip, :string
  end
end
