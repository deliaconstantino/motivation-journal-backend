class Keyword < ApplicationRecord
  validates :name, presence: true

  has_many :entry_keywords
  has_many :entries, through: :entry_keywords
end
