class User < ApplicationRecord
  include Clearance::User
  has_many :todo_app_lists
  has_many :tools
  has_many :notes
end
