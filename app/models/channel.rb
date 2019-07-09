class Channel < ApplicationRecord
    has_many :users
    has_many :messages
end
