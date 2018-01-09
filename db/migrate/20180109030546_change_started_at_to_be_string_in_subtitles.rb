class ChangeStartedAtToBeStringInSubtitles < ActiveRecord::Migration[5.1]
  def change
    change_column :subtitles, :started_at, :string
  end
end
