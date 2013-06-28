class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :lname
      t.string :fname
      t.string :DOB
      t.string :date

      t.timestamps
    end
  end
end
