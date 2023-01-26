class Entry < ApplicationRecord
  validates :body, presence: { message: "of journal entry cannot be blank" }

  belongs_to :user
  has_many :entry_keywords, dependent: :destroy
  has_many :keywords, through: :entry_keywords

  accepts_nested_attributes_for :keywords

  def keywords_attributes=(params)
    name = params[:name].downcase.strip
    if !name.empty?
      keyword = Keyword.find_or_create_by(name: name)
      self.keywords << keyword unless self.keywords.include?(keyword)
    end
  end
end
