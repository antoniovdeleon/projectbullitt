class WelcomeController < ApplicationController
  def index
    @npo = Npo.all
    @task = Task.all 
    @user = User.all
    
    render :index
  end
  
  def show
  	render :show
  end
end
