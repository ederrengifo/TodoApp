class Board < ApplicationRecord
  has_many :messages
  has_many :favorites
end
