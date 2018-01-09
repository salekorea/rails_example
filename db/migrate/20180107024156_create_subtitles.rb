class CreateSubtitles < ActiveRecord::Migration[5.1]
  def change
    create_table :subtitles do |t|
      t.integer :order
      t.string :started_at
      t.string :ended_at
      t.text :content
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
