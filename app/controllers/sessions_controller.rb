class SessionsController < ApplicationController
   def new
   end
   def create
    user = User.find_by_email(params[:email])
    # If username and password matches.
    if user && user.authenticate(params[:password])
      # Save the user id to keep the user logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to '/'
    else
      # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
    end
    end

   def destroy
    session[:user_id] = nil
    redirect_to '/'
   end
end
  
