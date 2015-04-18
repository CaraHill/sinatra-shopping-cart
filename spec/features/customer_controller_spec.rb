require 'spec_helper'
require 'faker'

describe "CustomerController" do

  describe "POST /sign_up" do

    before do
      post '/sign_up', {name: "Cara Hill", email: Faker::Internet.email, password: Faker::Internet.password}
    end

    it "returns http status of 302" do
      expect(last_response.status).to eq(302)
    end

    it "redirects to /" do
      expect(last_response.header["Location"]).to eq('http://example.org/')
    end

    it "add a new customer to the database" do
      expect(Customer.find_by(name: "Cara Hill")).to be_truthy
    end

  end

  describe "POST /log_in" do

    before do
      post '/log_in', {email: "chilly23@gmail.com", password: "password"}
    end

    it "returns http status of 302" do
      expect(last_response.status).to eq(302)
    end

    # it "checks if customer is in the database" do
    #   expect(Customer.find_by(email: "chilly23@gmail.com")).to be_truthy
    # end

    it "redirects to /" do
      expect(last_response.header["Location"]).to eq('http://example.org/')
    end

  end


end
