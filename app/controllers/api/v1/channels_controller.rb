class Api::V1::ChannelsController < ApplicationController
     skip_before_action :authorized, only: [:index]
    def index 
        channels = Channel.all 
        render :json => channels, status: :accepted

    end

      def create
    channel = Channel.new(channel_params)
    if channel.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        ChannelSerializer.new(channel)
      ).serializable_hash
      ActionCable.server.broadcast 'channels_channel', serialized_data
      render json: { channel: ChannelSerializer.new(channel) }, status: :accepted
    end
  end


     def show 
        channel = Channel.find(params[:id]) 
        render json: { channel: ChannelSerializer.new(channel) }, status: :accepted
        
    end

    private 
    def channel_params
        params.require(:channel).permit(:name)
    end
end
