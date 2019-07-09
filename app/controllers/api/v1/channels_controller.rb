class Api::V1::ChannelsController < ApplicationController
    
    def index 
        channels = Channel.all 
        render :json => channels, status: :accepted

    end

     def show 
        channel = Channel.find(params[:id]) 
        render json: { channel: ChannelSerializer.new(channel) }, status: :accepted
        
    end
end
