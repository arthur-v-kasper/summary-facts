class KeywordSerializer < ActiveModel::Serializer
  attributes :word

  belongs_to :fact
end
