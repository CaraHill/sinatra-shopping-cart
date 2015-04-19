enable :sessions

get '/' do

  @products = Product.all

  if @current_customer
    @cart_items = @current_customer.find_products
  end
  session[:notice] = nil
  erb :home_page

end

get '/products' do

  @products = Product.all

  if @current_customer
    @cart_items = @current_customer.find_products
  end

  session[:notice] = nil
  erb :home_page

end

get '/products/:id' do

  @current_product = Product.find_by_id(params[:id])

  if @current_customer
    @cart_items = @current_customer.find_products
  end

  erb :product

end

post '/products' do

  redirect('/products')

end

