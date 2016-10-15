class Board < ApplicationRecord
  has_many :messages
  has_many :favorites
  default_scope { order(updated_at: :desc) }
end
