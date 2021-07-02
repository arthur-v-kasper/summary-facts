class FactSerializer < ActiveModel::Serializer
  attributes :title, :summary, :image_url, :website_origin, :slug

  belongs_to :category
  has_many :keywords
end
