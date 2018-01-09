class Translation < ApplicationRecord
  belongs_to :video
  belongs_to :subtitle
  belongs_to :user
end
