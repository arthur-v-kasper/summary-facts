class KeywordFact < ApplicationRecord
  belongs_to :keyword
  belongs_to :fact


  def keywords_attributes=(words)
    self.keyword = Keyword.find_or_create_by(words)
  end  
end
