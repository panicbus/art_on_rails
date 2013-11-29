class SessionsController < ApplicationController
  skip_before_filter :authenticate, only: [:new, :create]
  # include SessionsHelper

  def new #just renders a form

  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      sign_in(user)
      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end

  def destroy # ends the user session
    sign_out
    redirect_to new_session_path
  end
end
