class Api::V1::ChannelsController < ApplicationController
    
    def index 
        channels = Channel.all 
        render json: channels.to_json(:include => {
      :messages => {:messages => [:content, :user_id], :except => [:created_at, :updated_at]}})
    end

     def show 
        channel = Channel.find(params[:id]) 
        render json: channel.to_json(:include => {
      :messages => {:messages => [:content, :user_id], :except => [:created_at, :updated_at]}})
    end
end
