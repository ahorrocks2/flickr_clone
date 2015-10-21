class SessionsController < ApplicationController
   def new
     @user = User.find(params[:id])
   end

   def create
     @user = User.find(params[:id])

     if @user.save
       redirect_to user_path(@user)
     else
       flash[:notice] = "Something went wrong"
       render :new
     end
   end


end
