class AuthenticationController < ApplicationController

  def login
    user = User.find_by(phonenumber: params[:phonenumber])
    if user && user.authenticate(params[:password_digest])
      render json: {user: user}
    else
      render json: {error: "Invalid username or password"}, status: :unauthorized
    end
  end

  def admin
    user = User.find_by(phonenumber: params[:phonenumber])
    if user && user.authenticate(params[:password_digest]) && user.isAdmin
      render json: {user: user}
    else
      render json: {error: "Invalid username or password"}, status: :unauthorized
    end
  end

  def verify
    #verify the token
    if logged_in?
      render json: {user: current_user}
    else
      render json: {error: "Invalid token"}, status: :unauthorized
    end
  end
end
