class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :microposts
  validates :name, presence: true
  validates :email,
    presence: true,
    format: { with: /\A[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-_]+\.[a-zA-Z]+\z/ },
    uniqueness: { case_sensitive: false }
end
