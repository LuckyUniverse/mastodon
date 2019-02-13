class Api::Casino::CreateUserController < Api::BaseController

  def index

    @email = params[:email]
    @password = params[:password]
    @username = params[:username]
    @account  = Account.new(username: @username)
    @user  = User.new(email: @email, password: @password, account_attributes: { username: @username }, agreement: true, confirmed_at: Time.now.utc )

    if @account.save 
      @account.suspended = false
      @user.account      = account

      if @user.save 
        render json: {"success":true, "user":@user}
      else
        render json: {"success":false, "error": @user.errors.full_messages}
      end
    else 
      render json: {"success":false, "error": @account.errors.full_messages}
    end
    
  end

end
