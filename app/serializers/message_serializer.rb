class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_name, :replies
  has_many :replies
  
  def user_name
   object.user.username
  end

  def replies
    object.replies
  end 
end
