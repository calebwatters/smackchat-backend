require 'pry'
require 'bcrypt'
class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all 
        render json: users
    end

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end


     def show 
        user = User.find(params[:id]) 
        render json: user
    end

    def create
        @user = User.new(user_params)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
        @user.password_digest = BCrypt::Password.create(params[:password], cost: cost)
        if @user.save
            render json: { user: UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def edit
        user = User.find(current_user.id)
        user.update(img_url: params[:img_url])
    end

    private

    def user_params 
        params.require(:user).permit(:username, :name, :password, :email)
    end

end



