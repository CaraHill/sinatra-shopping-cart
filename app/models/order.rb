class Order < ActiveRecord::Base
  scope :unpurchased, -> { where(purchased: false) }
  scope :purchased, -> { where(purchased: true) }
end
