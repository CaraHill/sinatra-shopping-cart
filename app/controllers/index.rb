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
  erb :product
end

get '/sign_up' do
  erb :sign_up
end

post '/sign_up' do
  customer = Customer.new(name: params[:name], email: params[:email], password: params[:password])
  if customer.save
    session[:user_id] = customer.id
    redirect('/')
  else
    redirect('/')
  end
end

