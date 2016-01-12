class UsersController < ApplicationController
  def show
    sleep 3
    @user = User.find(params[:id])
  end
end
