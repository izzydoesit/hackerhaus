class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email]).try(:authenticate, params[:session][:password])
    if user
      if user.is_active?
        session[:user_id] = user.id
        redirect_to (session[:arget_url] || root_path), notice: 'Successfully logged in.'
      else
        redirect_to new_session_path, flash: { error: 'Account inactive.  Please activate your account.' }
      end
    else
      redirect_to new_session_path, flash: { error: 'Invalid username or password.' }
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Successfully logged out.'
  end
end
