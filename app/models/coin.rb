class Coin < ApplicationRecord
  has_many :transactions
  def self.total
    Coin.sum(:value)
  end
end
