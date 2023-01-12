class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)
        render json: user
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
