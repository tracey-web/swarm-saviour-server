class UsersController < ApplicationController
    skip_before_action :is_authorized, only: [:create, :login]

    def user_profile
        render json: @user
    end

    def index
        @users = User.all

        render json: @users
    end

    def create
        @user = User.create(user_params)
        @token = JWT.encode({user_id: @user.id}, Rails.application.secrets.secret_key_base[0])
        render json: {user: @user, token: @token}, status: :created
    end

    def login
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
          @token = JWT.encode({user_id: @user.id}, Rails.application.secrets.secret_key_base[0])

          render json: {user: @user, token: @token}
        else
          render json: {error: "Invalid Credentials"}, status: :unauthorized
        end
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :name, :phone, :lat, :long, :location, :created_at, :updated_at )
    end

end
