class CategorySerializer < ActiveModel::Serializer
  attributes :title, :description, :slug, :icon
end