class Api::V1::UserChannelsController < ApplicationController
    skip_before_action :authorized, only: [:index]
    def index 
        user_channels = UserChannel.all 
        render :json => user_channels, status: :accepted

    end

    def create
        user_channel = UserChannel.new(user_channel_params)
        if user.save
            status: :accepted
        end
    end

     def show 
        user_channel = UserChannel.find(params[:id]) 
        render json: { user_channel: UserChannelSerializer.new(user_channel) }, status: :accepted
        
    end

    private

    def user_channel_params
        params.require(:user_channel).permit(:channel_id, :user_id)
    end
end
