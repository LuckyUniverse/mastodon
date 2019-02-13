class Api::Casino::CreateUserController < Api::BaseController

  def index

    
    @email = params[:email]
    @password = params[:password]
    @username = params[:username]
    @user = User.new(email: @email, password: @email, account_attributes: { username: @username })
    if @user.save 
      render json: {"success":true}
    else
      render json: {"success":false, "error": @user.errors.full_messages}
    end
  end

end
