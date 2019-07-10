class ChannelSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id
  has_many :messages
end
