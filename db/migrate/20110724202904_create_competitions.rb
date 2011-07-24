class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :theme
      t.datetime :start_date, :null => false
      t.datetime :end_date

      t.timestamps
    end
  end
end
