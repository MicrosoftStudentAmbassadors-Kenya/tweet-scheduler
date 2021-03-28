class RegistrationController < ApplicationController
    def new
        @user = User.new # This is an instance variable to be used in our views
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully Created an Account. Welcome!"
        else
            render :new

        end
    end 

    private
    
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
 