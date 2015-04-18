require 'spec_helper'
require 'faker'

describe "Controller" do

  describe "GET /" do

    before(:all) do
      @product = Product.create(name: Faker::Commerce.product_name, image: Faker::Avatar.image, description: Faker::Lorem.paragraph, price: Faker::Commerce.price)
      get '/'
    end

    it "returns an http status of 200" do
      expect(last_response.status).to eq(200)
    end

    it "returns index.erb" do
      expect(last_response.body).to include("<h1>Welcome to Pinup Girl Clothing</h1>")
    end

    it "the template contains all the products in the DB" do
      expect(last_response.body).to include(@product.name)
    end

    after(:all) do
      Product.destroy_all
    end

  end

  # describe "POST /cats" do

  #   describe "if valid request" do

  #     before do
  #       post '/cats', {name: "Chairvan Davis", product: "one van"}
  #     end

  #     it "returns http status of 302" do
  #       expect(last_response.status).to eq(302)
  #     end

  #     it "redirects to /cats" do
  #       expect(last_response.header["Location"]).to include('/cats')
  #     end

  #     it "add a new cat to the database" do
  #       expect(Cat.find_by(name: "Chairvan Davis")).to be_truthy
  #     end

  #     after do
  #       Cat.destroy_all
  #     end

  #   end

  #   describe "if invalid request" do

  #     before do
  #       post '/cats', {name: "", product: "", asdf: "eyyyyy"}
  #     end

  #     it "return status 400" do
  #       expect(last_response.status).to eq(400)
  #     end

  #     it "it doesn't make a new cat" do
  #       expect(Cat.all.length).to eq(0)
  #     end

  #   end

  # end

end
