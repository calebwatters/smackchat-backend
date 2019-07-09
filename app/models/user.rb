class User < ApplicationRecord
    has_secure_password
    has_many :channels
    has_many :messages
    validates :username, presence: true, length: { maximum: 20 }
    validates :name, uniqueness: true





end
