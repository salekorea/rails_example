class CreateTranslations < ActiveRecord::Migration[5.1]
  def change
    create_table :translations do |t|
      t.references :video, foreign_key: true
      t.references :subtitle, foreign_key: true
      t.references :user, foreign_key: true
      t.string :lang
      t.text :content

      t.timestamps
    end
  end
end
