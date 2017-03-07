class HomeController < ApplicationController
  def index
    if customer_signed_in?
      redirect_to :controller => 'customer/customer_dashboard', :action => 'index'
    end
  end
end
