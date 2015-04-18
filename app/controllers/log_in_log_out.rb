enable :sessions

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