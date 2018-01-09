class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :detail
      t.string :duration
      t.string :url
      t.references :channel, foreign_key: true

      t.timestamps
    end
  end
end
