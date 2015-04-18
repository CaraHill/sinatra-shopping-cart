require "scrypt"

class Customer < ActiveRecord::Base
  before_save :encrypt_password

  validates :email, uniqueness: true

  def self.authenticate(email, password)
    if customer = Customer.find_by(email: email)
      customer if SCrypt::Password.new(customer.password) == password
    else
      nil
    end
  end

  private

  def encrypt_password
    self.password = SCrypt::Password.create(password)
  end
end
