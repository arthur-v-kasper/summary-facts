class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :description
      t.string :icon

      t.timestamps
    end
  end
end
