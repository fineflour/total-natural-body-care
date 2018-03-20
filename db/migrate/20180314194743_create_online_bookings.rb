class CreateOnlineBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :online_bookings do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :appnt_date, size: 18
      t.string :appnt_time, size: 10
      t.string :doctor
      t.string :status
      t.string :note
      t.boolean :first_visit, default: false

      t.timestamps
    end
  end
end
