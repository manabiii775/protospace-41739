class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototype = @user.prototypes
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :profile, :occupation, :position, user_ids: [])
  end
end
