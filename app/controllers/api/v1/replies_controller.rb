class Api::V1::RepliesController < ApplicationController

    def index 
        messages = Reply.all 
        render json: messages
    end

     def show 
        message = Reply.find(params[:id]) 
        render json: message
    end
end