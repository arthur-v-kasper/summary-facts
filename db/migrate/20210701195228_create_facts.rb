class CreateFacts < ActiveRecord::Migration[6.1]
  def change
    create_table :facts do |t|
      t.string :title
      t.string :summary
      t.string :image_url
      t.string :website_origin
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
