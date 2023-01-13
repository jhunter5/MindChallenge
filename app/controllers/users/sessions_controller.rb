# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  respond_to :json

  private

  def respond_with(resource, _opts = {})
    # current_user= User.find_by(email: params[:email])
    render json: {
      status: {code: 200, message: 'Logged in sucessfully.', data: current_user }
    }, status: :ok
  end

  def respond_to_on_destroy
    # if current_user
    #   render json: {
    #     status: 200,
    #     message: "logged out successfully"
    #   }, status: :ok
    # else
    #   render json: {
    #     status: 401,
    #     message: "Couldn't find an active session."
    #   }, status: :unauthorized
    # end
    jwt_payload= JWT.decode(request.headers['Authorization'].split(' ')[1],
    Rails.application.credentials.devise_jwt_secret_key!).first
    current_user= User.find_by_jti(jwt_payload['jti'])
    if current_user
      render json: {
        status:200,
        message: "signed out sucessfully"
      }, status: :ok
    else
      render json: {
        status: 401,
        message: "user has no active session"
      }, status: :unauthorized
    end
  end

end
