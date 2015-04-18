require 'spec_helper'
require 'faker'

describe "CustomerController" do

  describe "POST /sign_up" do

    before(:all) do
      post '/sign_up', {name: "Cara Hill", email: Faker::Internet.email, password: Faker::Internet.password}
    end

    it "returns http status of 302" do
      expect(last_response.status).to eq(302)
    end

    it "redirects to /" do
        expect(last_response.header["Location"]).to be('/')
    end

    it "add a new customer to the database" do
      expect(Customer.find_by(name: "Cara Hill")).to be_truthy
    end

  end


end
