class Coin < ApplicationRecord
  def self.total
    Coin.sum(:value)
  end
end
