class SessionsController < ApplicationController
  def new #用來處理登入介面
  end

  def create #用來處理登入流程
    user = User.find_by(name: user_params[:name]).try(:authenticate, user_params[:password])
    if user 
      render plain: sprintf("welcome, %s!", user.name)
    else render
    flash.now[:login_error] = "invalid username or password"
    render "new"
    end
  end
  
  private 
  def user_params 
  params.require(:session).permit(:name, :passwords)
  end
end
