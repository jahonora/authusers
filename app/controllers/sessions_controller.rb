class SessionsController < ApplicationController
  def new
  	@user = User.new
  end
  def create
  	@user = User.find_by(email: params[:user][:email]).try(:authenticate, params[:user][:password])
  	if @user.present?
  		session[:user_id] = @user.id
  		redirect_to root_path
  	else
  		redirect_to users_sign_in_path, alert: 'El Usuario o Contraseña no es valido'
  	end
  end

  def destroy
  	reset_session
  	redirect_to users_sign_in_path
  end

  private
  def session_params
  end
end
