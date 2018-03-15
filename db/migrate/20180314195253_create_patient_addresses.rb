class CreatePatientAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :patient_addresses do |t|
      t.references :patient, index: true
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :primary, default: true
      t.timestamps
    end
  end
end
