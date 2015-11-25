class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Bem-vindos ao Mãos Que Ajudam"
      redirect_to "/"
    else
      flash[:alert] = "Problemas ao criar sua conta, tente novamente."
      redirect_to :back
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
