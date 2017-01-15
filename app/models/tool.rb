class Tool < ApplicationRecord
  belongs_to :link
  belongs_to :user
  default_scope { order(created_at: :asc) }
end
