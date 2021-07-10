class FactSerializer < ActiveModel::Serializer
  attributes :title, :summary, :imageurl, :website, :slug
  belongs_to :category
  has_many :keyword_facts
end
