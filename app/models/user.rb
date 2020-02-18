class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates_presence_of :password, require: true
  validates_presence_of :role
  enum role: %w(default admin)
  has_secure_password
end
