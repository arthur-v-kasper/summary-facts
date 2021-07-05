class Fact < ApplicationRecord
  belongs_to :category
  has_many :keyword_facts, dependent: :destroy
  before_create :slugify

  def slugify
    self.slug = title.parameterize
  end
end
