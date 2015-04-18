enable :sessions

get "/products/cart" do

  @current_customer = Customer.find_by_id(session[:customer_id])
  @cart_items = @current_customer.find_products
  if @current_customer
    erb :cart
  else
    redirect '/'
  end

end

post "/add_to_cart" do
  current_customer = Customer.find_by_id(session[:customer_id])
  current_product = Product.find_by_id(params[:id])
  order = Order.new(customer_id: current_customer.id, product_id: current_product.id, purchased: false)
  if order.save
    redirect '/products/cart'
  else
    session[:error] = "This item has not been saved to the cart."
    redirect back
  end
end