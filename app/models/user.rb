class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments
  validates :username, presence: true, length: { minimum: 4, maximum: 12 }, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
