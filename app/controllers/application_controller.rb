class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

    helper_method :current_user

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def require_user
      redirect_to '/login' unless current_user
    end

    def require_signin
      unless current_user
        session[:intended_url] = request.url
        flash[:notice] = "Please sign in first!"
        redirect_to(new_session_url)
      end
    end

    helper_method :current_user_admin?

    def current_user_admin?
      current_user && current_user.admin?
    end

    def require_admin
      unless current_user_admin?
        flash[:notice] = "Unauthorised Access Denied!"
        redirect_to(root_url)
      end
    end


end
