class UserController < ApplicationController

  def new
  end

  def create
    @users = User.create(
      username: params[:username],
      email: params[:email],
      bio: params[:bio]
    )

    if @users.errors.any?
      redirect_to('/users/error')
    else
      redirect_to("/users/#{@users.username}")
    end
  end
end
