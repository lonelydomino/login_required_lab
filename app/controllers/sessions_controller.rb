class SessionsController < ApplicationController
    def new
      
    end
  
    def create
        if !params[:name] || params[:name].empty?
            redirect_to action: :new if !params[:name] || params[:name].empty?
            return false
        else
            session[:name] = params[:name]
        end
    end
  
    def destroy
      session.delete :name
    end
end
