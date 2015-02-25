class CreatePhraseRepositories < ActiveRecord::Migration
  def change
    create_table :phrase_repositories do |t|
      t.text :english_phrase
      t.text :huttese_phrase
      t.timestamps
    end
  end
end
