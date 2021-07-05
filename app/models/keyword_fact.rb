class KeywordFact < ApplicationRecord
  belongs_to :keyword
  belongs_to :fact
end
