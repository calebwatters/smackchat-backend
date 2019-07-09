class Api::V1::ChannelsController < ApplicationController
    
    def index 
        channels = Channel.all 
        render json: channels
    end

     def show 
        channel = Channel.find(params[:id]) 
        render json: channel
    end
end
