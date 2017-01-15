class Link < ApplicationRecord
  has_many :tools
  belongs_to :user
  default_scope { order(updated_at: :asc) }
end
