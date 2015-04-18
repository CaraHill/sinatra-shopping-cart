class Order < ActiveRecord::Base
  scope :unpurchased, -> { where(purchased: false) }
  scope :purchased, -> { where(purchased: true) }

  belongs_to :product
end
