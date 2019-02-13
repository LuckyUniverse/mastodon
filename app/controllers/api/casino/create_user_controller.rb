class Api::Casino::CreateUserController

  respond_to :json

  def index
    @email = params[:email]
    @password = params[:password]
    @username = params[:username]
    @user = User.new(email: @email, password: @email, account_attributes: { username: @username })
    if user.save {
      render text: 'user saved'
    } else {
      render text: "error"
    }
  end

end
