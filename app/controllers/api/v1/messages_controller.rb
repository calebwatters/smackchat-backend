class Api::V1::MessagesController < ApplicationController
 skip_before_action :authorized, only: [:index]
    def index 
        messages = Message.all 
        render json: messages
    end

    def create
        message = Message.create(message_params)
        render json: { message: MessageSerializer.new(message) }, status: :accepted
    end

     def show 
        @message = Message.find(params[:id]) 
        render json: { message: MessageSerializer.new(@message) }, status: :accepted
    end

    private 

    def message_params
         params.require(:message).permit(:user_id, :content, :channel_id)
    end
end
