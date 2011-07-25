class AddNotNullConstraintToSubmissionUrl < ActiveRecord::Migration
  def up
    change_column :submissions, :url, :string, :null => false
  end

  def down
    change_column :submissions, :url, :string, :null => true
  end
end
