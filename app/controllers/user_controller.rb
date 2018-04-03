class UserController < ApplicationController

  def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "You have logged out"
    redirect_to :controller => :items
  end

  def login
    session[:login] = 1
    redirect_to :controller => :items
    flash[:notice] = "You have logged in...like totaly!"    
  end

  def admin_login
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "You have logged in as admin"
    redirect_to :controller => :items
  end
end
