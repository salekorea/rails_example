class ChangeEndedAtToBeStringInSubtitles < ActiveRecord::Migration[5.1]
  def change
    change_column :subtitles, :ended_at, :string
  end
end
