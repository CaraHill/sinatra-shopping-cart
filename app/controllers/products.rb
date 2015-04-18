enable :sessions

get '/' do
  @products = Product.all
  erb :index
end

get '/products' do
  @products = Product.all
  erb :index
end

get '/products/:id' do
  @current_product = Product.find_by_id(params[:id])
  @current_customer = session[:user_id]
  erb :product
end

post '/products' do
  redirect('/')
end
