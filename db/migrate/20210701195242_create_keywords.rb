class CreateKeywords < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords do |t|
      t.string :word
      t.belongs_to :fact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
