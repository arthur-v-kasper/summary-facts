class AddColumnSlugToCategoryandFacts < ActiveRecord::Migration[6.1]
  def change
    add_column(:facts, :slug, :string, limit: 255)
    add_column(:categories, :slug, :string, limit: 50)
  end
end
