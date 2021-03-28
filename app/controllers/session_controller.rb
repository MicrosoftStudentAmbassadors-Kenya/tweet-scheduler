class SessionController < ApplicationController
    def create
        user = User.find_by(email: params[:email])

        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged In Successfully!"
        else
            flash[:alert] = "Invalid Email or Password! Try Again!"
            render :new
        end
    end
    
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Successfully logged out."
    end

    def new
    
    end
end
