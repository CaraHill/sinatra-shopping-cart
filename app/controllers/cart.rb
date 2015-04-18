get "/cart" do

  @current_customer = Customer.find_by_id(session[:customer_id])
  if @current_customer
    erb :cart
  else
    redirect '/'
  end

end