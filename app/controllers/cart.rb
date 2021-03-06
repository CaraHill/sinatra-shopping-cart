enable :sessions

before do

  @current_customer = Customer.find_by_id(session[:customer_id])
  @current_product = Product.find_by_id(params[:id])

end

get "/products/cart" do

  if @current_customer
    @cart_items = @current_customer.find_products
    erb :cart
  else
    redirect '/'
  end

end

post "/add_to_cart" do

  order = Order.new(customer_id: @current_customer.id, product_id: @current_product.id, purchased: false)

  if order.save
    redirect '/products/cart'
  else
    session[:error] = "This item has not been saved to the cart."
    redirect back
  end

end

post '/buy_now' do

  Order.destroy_all
  session[:notice] = "You have purchased all items in your cart. Thank you for shopping with us."
  redirect '/products/cart'

end

post '/remove_from_cart' do

  order = Order.where(product_id: @current_product.id).destroy_all
  redirect back

end