class Fact < ApplicationRecord
  belongs_to :category
  has_many :keyword_facts
  before_create :slugify

  def slugify
    self.slug = title.parameterize
  end
end
