class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :lname
      t.string :fname
      t.date   :DOB
      t.string :address
      t.string :city
      t.string :prov
      t.string :gender       

      t.timestamps
    end
  end
end
