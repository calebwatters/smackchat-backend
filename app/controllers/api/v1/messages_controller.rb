class Api::V1::MessagesController < ApplicationController
 skip_before_action :authorized
    def index 
        messages = Message.all 
        render json: messages
    end

    def create
    message = Message.new(message_params)
    channel = Channel.find(message_params[:channel_id])
    if message.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        MessageSerializer.new(message)
      ).serializable_hash
      MessagesChannel.broadcast_to channel, serialized_data
      render json: { message: MessageSerializer.new(message) }, status: :accepted
    end
  end

     def show 
        @message = Message.find(params[:id]) 
        render json: { message: MessageSerializer.new(@message) }, status: :accepted
    end

    private 

    def message_params
         params.require(:message).permit(:user_id, :content, :channel_id, :likes)
    end
end
