class CreateJapaneseWords < ActiveRecord::Migration[5.0]
  def change
    create_table :japanese_words do |t|
      t.string :word
      t.string :meaning

      t.timestamps
    end
  end
end
