class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :email, :img_url
end
