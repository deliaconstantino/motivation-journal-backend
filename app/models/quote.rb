class Quote < ApplicationRecord
  def self.random
    order('RANDOM()').first
  end
end
