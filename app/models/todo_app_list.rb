class TodoAppList < ApplicationRecord
  has_many :tasks
  belongs_to :user
  default_scope { order(updated_at: :desc) }
end
