class Note < ApplicationRecord
  has_many :notes_lists
  belongs_to :user
  default_scope { order(updated_at: :desc) }
end
