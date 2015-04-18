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
  erb :product
end