class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # before_filter :authorize
  # before_filter :session_id
  #
  # def current_customer(customer)
  #   @customer = Customer.new(ip_address: session[:ip_address].to_s)
  #
  #   if @customer.save
  #     session[:customer_id] = @customer.id
  #   else
  #     customer = Customer.find(session[:customer_id])
  #     session[:customer_id] = customer.id
  #   end
  # end
  #
  # helper_method :current_customer
  #
  # # def authorize
  # #   if current_customer.nil?
  # #     redirect_to logins_path, :alert => "You need to log in to do that."
  # #   end
  # # end
  #
  # def session_id
  #   session[:ip_address] = request.remote_ip
  # end

end
