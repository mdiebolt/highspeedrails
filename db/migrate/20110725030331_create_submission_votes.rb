class CreateSubmissionVotes < ActiveRecord::Migration
  def up
    create_table :submission_votes do |t|
      t.references :user, :null => false
      t.references :competition, :null => false
      t.references :submission, :null => false

      t.timestamps
    end

    add_index :submission_votes, [:user_id, :competition_id], :unique => true
  end

  def down
    drop_table :submission_votes
  end
end
