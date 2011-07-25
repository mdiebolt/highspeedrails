class CreateCompetitionThemeVotes < ActiveRecord::Migration
  def up
    create_table :competition_theme_votes do |t|
      t.references :competition, :null => false
      t.references :user, :null => false

      t.timestamps
    end

    add_index :competition_theme_votes, [:user_id, :competition_id], :unique => true
  end

  def down
    drop_table :competition_theme_votes
  end
end
