class Channel < ApplicationRecord
 has_many :videos, dependent: :destroy
 has_many :follows
 has_many :users, through: :follows

 validates :name, presence: true
 validates :intro, presence: true

 mount_uploader :avatar, AvatarUploader
end
