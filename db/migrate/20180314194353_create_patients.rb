class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.integer :unique_id, null: false
      t.string :fname
      t.string :lname
      t.string :dob, size: 8
      t.string :gender, size: 1

      t.timestamps
    end
  end
end
