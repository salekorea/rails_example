class AddAvatarToChannels < ActiveRecord::Migration[5.1]
  def change
    add_column :channels, :avatar, :string
  end
end
