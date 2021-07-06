class Keyword < ApplicationRecord
  has_many :keyword_facts
  before_save :lowerfy

  def lowerfy
    self.word = word.downcase
  end  
end
