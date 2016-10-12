class Note < ApplicationRecord
  has_many :notes_lists
  belongs_to :user
end
