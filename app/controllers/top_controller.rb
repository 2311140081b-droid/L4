class TopController < ApplicationController
  def login
    params_uid = params[:uid]
    params_pass = params[:pass]
    judge = Top.find_by(uid: params_uid, pass: params_pass)
    if judge != nil then
      session[:login_uid] = params[:uid]
      redirect_to top_main_path
    else
      render "error", status: 422
    end
  end

  def main
    if session[:login_uid] != nil
      render "main"
    else
      render "login"
    end
  end
  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
end
