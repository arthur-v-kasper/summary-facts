class CreateKeywordsFacts < ActiveRecord::Migration[6.1]
  def change
    create_table :keywords_facts do |t|
      t.belongs_to :keywords, null: false, foreign_key: true
      t.belongs_to :facts, null: false, foreign_key: true

      t.timestamps
    end
  end
end
