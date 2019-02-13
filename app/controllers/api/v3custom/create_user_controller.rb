class Api::V3Custom::CreateUser < Api::BaseController
  def index

    @email = params[:email]
    @password = params[:password]
    @username = params[:username]
    @user = User.new(email: @email, password: @email, account_attributes: { username: @username })
    render json: @user
  end
end
