class ReplySerializer < ActiveModel::Serializer
    attributes :id, :content, :user_name
    
    def user_name
     object.user.username
    end
  end
  