class RemoveFkFactsAd < ActiveRecord::Migration[6.1]
  def change    
    remove_foreign_key :keywords, :facts
    remove_index :keywords, name: "index_keywords_on_fact_id"
    remove_column :keywords, :fact_id
  end
end
