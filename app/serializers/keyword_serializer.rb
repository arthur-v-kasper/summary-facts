class KeywordSerializer < ActiveModel::Serializer
  attributes :word
  has_many :keyword_facts
end
