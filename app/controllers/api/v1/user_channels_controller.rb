class Api::V1::UserChannelsController < ApplicationController
    skip_before_action :authorized
    def index 
        user_channels = UserChannel.all 
        render :json => user_channels, status: :accepted

    end

    def create
        user_channel = UserChannel.new(user_channel_params)
    if user_channel.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        UserChannelSerializer.new(user_channel)
      ).serializable_hash
      render json: { channel: UserChannelSerializer.new(user_channel) }, status: :accepted
    end
    end

     def show 
        user_channel = UserChannel.find(params[:id]) 
        render json: { user_channel: UserChannelSerializer.new(user_channel) }, status: :accepted
        
    end

    def destroy
        user_channel = UserChannel.find(params[:id])
        user_channel.destroy
    end

    private

    def user_channel_params
        params.require(:user_channel).permit(:channel_id, :user_id)
    end
end
