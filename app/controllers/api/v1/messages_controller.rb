class Api::V1::MessagesController < ApplicationController

    def index 
        messages = Message.all 
        render json: messages
    end

     def show 
        message = Message.find(params[:id]) 
        render json: message
    end
end
