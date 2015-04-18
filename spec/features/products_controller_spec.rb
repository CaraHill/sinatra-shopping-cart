require 'spec_helper'
require 'faker'

describe "ProductsController" do


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


  end

  describe "GET /products" do

    before(:all) do
      @product = Product.create(name: Faker::Commerce.product_name, image: Faker::Avatar.image, description: Faker::Lorem.paragraph, price: Faker::Commerce.price)
      get '/products'
    end

    it "the template contains all the products in the DB" do
      expect(last_response.body).to include(@product.name)
    end


  end

  describe "GET /products/:id" do

    before(:all) do
      @product = Product.create(name: Faker::Commerce.product_name, image: Faker::Avatar.image, description: Faker::Lorem.paragraph, price: Faker::Commerce.price)
      get "/products/#{@product.id}"
    end

    it "the template contains all info about the product" do
      expect(last_response.body).to include(@product.description)
    end


  end


end
