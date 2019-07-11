class ReplySerializer < ActiveModel::Serializer
    attributes :id, :content, :user_id, :message_id,  :user_name

 
    
    def user_name
      if (object.user)
        return object.user.username
      else
        return nil
      end
    end
  end
  