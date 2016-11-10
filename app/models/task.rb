class Task < ApplicationRecord
  belongs_to :todo_app_list
  belongs_to :user
  scope :priorities, -> {where(priority: true)}
  default_scope { order(created_at: :asc) }
end
