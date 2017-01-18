class User < ApplicationRecord
  include Clearance::User
  has_many :todo_app_lists
  has_many :links
  has_many :notes
  has_many :tasks, through: :todo_app_lists
  has_many :tools, through: :links
end
