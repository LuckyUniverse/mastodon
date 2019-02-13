class Api::Casino::CreateUserController < Api::BaseController

  def index

    render json: {"success":true}
    # @email = params[:email]
    # @password = params[:password]
    # @username = params[:username]
    # @user = User.new(email: @email, password: @email, account_attributes: { username: @username })
    # if user.save {
    #   render text: 'user saved'
    # } else {
    #   render text: "error"
    # }
  end

end
