class Subtitle < ApplicationRecord
  belongs_to :video
  has_many :translations, dependent: :destroy
end
