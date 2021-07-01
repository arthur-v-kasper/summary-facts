class Fact < ApplicationRecord
  belongs_to :category
  has_many :keywords
  before_create :slugify

  def slugify
    self.slug = title.parameterize
  end
end
