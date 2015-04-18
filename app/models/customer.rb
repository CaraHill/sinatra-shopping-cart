require "scrypt"

class Customer < ActiveRecord::Base
  before_save :encrypt_password

  def self.authenticate(email, password)
    if customer = Customer.find_by(email: email)
      customer if SCrypt::Password.new(user.password) == password
    else
      nil
    end
  end

  private

  def encrypt_password
    self.password = SCrypt::Password.create(password)
  end
end
