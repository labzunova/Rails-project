class MainController < ApplicationController
  before_action :set_user, only: %i[index profile edit profile_edit]

  def index
    @users = User.all
  end

  def profile
      # id = params[:id].to_i
      # if id.to_s =~ /\A[0-9]+\Z/
      #   if (@user = User.find_by_id(id))
      #   else
      #     render :error
      #   end
      # else
      #   render :error
      # end
  end

  def set_user
    @user = User.find_by_id(session[:current_user_id])
  end

  # GET /users/1/edit
  def profile_edit
  end

  def edit
    if !request.get?
      # current_user
      if @user.update(user_params)
        redirect_to main_profile_path
      else
        render :edit
      end
    else redirect_to main_profile_edit_path
    end
  end

  private

  def user_params
    params.permit(:username, :headline, :tube_description, :link, :email, :password, :password_confirmation)
  end

end
