class RenameKeywordFacts < ActiveRecord::Migration[6.1]
  def change
    rename_table('keywords_facts', 'keyword_facts')
  end
end
