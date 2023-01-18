class UsersController < ApplicationController

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
  before_action :authorize, only: [:show, :edit, :update, :destroy]

    def index
        users = User.all
        render json: users
    end

    def create
      user = User.create!(user_params)
      session[:user_id] = user.id
      render json: user, status: :created
  end

    def destroy
        user =find_user
        if user.destroy
          head :no_content
        else
          render json: {error: user.errors.messages}, status: 422
        end
    end

    private

    def find_user
        User.find_by(id: params[:id])
      end
       
      def user_params
        params.permit(:fullname, :phonenumber, :password, :password_confirmation)
      end
end