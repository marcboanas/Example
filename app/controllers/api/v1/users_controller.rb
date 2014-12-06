class Api::V1::UsersController < ApiController
before_filter :authorize_app_secret, only: [:create]

  def create
    @user = User.new(user_params)
    
    if @user.save
      render
    else
      render json: {
        message: 'Validation Failed',
        errors: @user.errors.full_messages
      }, status: 422
    end
  end

  private

  def generate_auth_token
    @auth_token = loop do
      random_token = SecureRandom.urlsafe_base64(nil, false)
      break random_token unless User.exists?(auth_token: random_token)
    end
  end
  
  def user_params
    {
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      auth_token: generate_auth_token
    }
  end

  def authorize_app_secret
    unless correct_app_secret?
      render nothing: true, status: 404
    end
  end

  def correct_app_secret?
    request.headers['app-secret'] == "secret"
  end
end