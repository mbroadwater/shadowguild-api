class UsersController < BaseController

  def show
    user = User.find(params[:id])
    response = UserSerializer.new(user)
    render(json: response)
  end

  def index
    users = User.all
    render json: users
  end
end
