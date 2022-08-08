class User < ApplicationRecord
  has_many :finished_products
  has_many :retailers, through: :finished_products
end
