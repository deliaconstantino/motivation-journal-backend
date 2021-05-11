class Entry < ApplicationRecord
  validates :body, presence: true
end
