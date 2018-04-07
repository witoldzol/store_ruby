class CartController < ApplicationController

  #before_filter :authenticate_user!
  
  #if cart exists, display it on the page
  #otherwise give it an empty value
  def index

    #create session variable named cart , if cart doesn't exist assign empty hash    
    #    @cart = session[:cart] ||= {}
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end

  end
  
  #set session var to nil and redirect
  def clearCart
    session[:cart] = nil
    redirect_to :action => :index
  end

  def add
    
    #id of the product
    id = params[:id]
        
    #if cart exists use it
    #otherwise create new cart
#    cart = session[:cart] ||= {}
    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end

    
    #if product has been added, increment by one
    #cart[id] = (cart[:id] || 0) + 1
    if cart[id] then
      cart[id] = cart[id] + 1
    else
      cart[id] = 1
    end
    #redirect to cart page
    redirect_to :action => :index
    
  end
#class end  
end
