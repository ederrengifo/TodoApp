class Message < ApplicationRecord
  belongs_to :board
  belongs_to :user
  scope :favorites, -> {where(favorite: true)}
  default_scope { order(created_at: :asc) }
end
