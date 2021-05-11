class Entry < ApplicationRecord
  validates :body, presence: true

  has_many :entry_keywords
  has_many :keywords, through: :entry_keywords
end
