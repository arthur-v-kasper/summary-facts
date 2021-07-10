class Fact < ApplicationRecord
  belongs_to :category
  has_many :keyword_facts, dependent: :destroy
  has_many :keywords, through: :keyword_facts 
  before_create :slugify
 #has_and_belongs_to_many :keywords, join_table: 'keyword_facts'
  accepts_nested_attributes_for :keyword_facts
  alias_attribute :imageurl, :image_url
  alias_attribute :website, :website_origin

  def slugify
    self.slug = title.parameterize
  end
      
  def keyword_facts_attributes=(items)
    items.each do |item|
      keyword_facts.build(item)
    end
  end  

end
