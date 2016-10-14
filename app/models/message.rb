class Message < ApplicationRecord
  belongs_to :board
  belongs_to :user
  scope :favorites, -> {where(favorite: true)}
end
