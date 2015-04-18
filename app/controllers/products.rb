enable :sessions

get '/' do
  @products = Product.all
  @current_customer = Customer.find_by_id(session[:customer_id])
  session[:notice] = nil
  erb :home_page
end

get '/products' do
  @products = Product.all
  @current_customer = Customer.find_by_id(session[:customer_id])
  @cart_items = @current_customer.find_products
  session[:notice] = nil
  erb :home_page
end

get '/products/:id' do
  @current_product = Product.find_by_id(params[:id])
  @current_customer = Customer.find_by_id(session[:customer_id])
  if @current_customer
    @cart_items = @current_customer.find_products
  end
  erb :product
end

post '/products' do
  redirect('/products')
end
