class Api::V1::RepliesController < ApplicationController
    skip_before_action :authorized
    def index 
        replies = Reply.all 
        # render json: { reply: ReplySerializer.new(replies) }, status: :accepted
        render json: replies
    end

    def create 
        reply = Reply.new(reply_params)
        # channel = Message.find(reply_params[:message_id])
    if reply.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        ReplySerializer.new(reply)
      ).serializable_hash
    #   RepliesChannel.broadcast_to message, serialized_data
      render json: { message: ReplySerializer.new(reply) }, status: :accepted
    end
    end

     def show 
         @message = Reply.find(params[:id]) 
        render json: { reply: ReplySerializer.new(@message) }, status: :accepted
    end

        private 

    def reply_params
         params.require(:reply).permit(:user_id, :content, :message_id)
    end
end