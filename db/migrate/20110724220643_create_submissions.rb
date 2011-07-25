class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :name, :null => false
      t.string :url
      t.integer :votes
      t.references :competition, :null => false

      t.timestamps
    end
  end
end
