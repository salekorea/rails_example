class Video < ApplicationRecord
  belongs_to :channel
  has_many :subtitles, dependent: :destroy
  has_many :translations, dependent: :destroy

  mount_uploader :avatar, AvatarUploader
end
