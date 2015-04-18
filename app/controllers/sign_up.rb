enable :sessions

get '/sign_up' do
  erb :sign_up
end

post '/sign_up' do
  customer = Customer.new(name: params[:name], email: params[:email], password: params[:password])
  if customer.save
    session[:customer_id] = customer.id
    session[:error] = nil
    redirect('/')
  else
    session[:error] = "Your details were not saved to our database. Please try again."
    redirect('/')
  end
end