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

get '/sign_up' do
  erb :sign_up
end

post '/sign_up' do
  customer = Customer.new(name: params[:name], email: params[:email], password: params[:password])
  if customer.save
    session[:user_id] = customer.id
    session[:error] = nil
    redirect('/')
  else
    redirect('/')
  end
end

get '/log_in' do
  erb :log_in
end

post '/log_in' do
  if customer = Customer.authenticate(params[:email], params[:password])
    session[:customer_id] = customer.id
    session[:error] = nil
    redirect('/')
  else
    session[:error] = "Invalid email and/or password"
    redirect('/')
  end
end

get '/log_out' do
  erb :log_out
end

post '/log_out' do
  session.clear
  redirect '/'
end

post '/products' do
  redirect('/')
end
