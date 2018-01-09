class AddAvatarToVideos < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :avatar, :string
  end
end
