class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_name, :created_at, :user_id, :channel_id

  def user_name
   object.user.username
  end

end
