class Api::V3Custom::SearchController < Api::BaseController
  def index

    user = User.new(email: email, password: SecureRandom.hex, account_attributes: { username: username })
      if user.save
  end
end
