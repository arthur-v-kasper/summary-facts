class RenameKeywordFactsColumns < ActiveRecord::Migration[6.1]
  def change
    rename_column "keyword_facts", :facts_id, :fact_id
    rename_column "keyword_facts", :keywords_id, :keyword_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
