class EntryKeyword < ApplicationRecord
  belongs_to :entry
  belongs_to :keyword
end
