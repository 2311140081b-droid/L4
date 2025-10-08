class TopController < ApplicationController
	def login
		if params[:uid] == "kindai" and  params[:pass] == "sanriko" then
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
end
