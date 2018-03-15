class CreateOnlineBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :online_bookings do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :appnt_date, size: 8
      t.string :appnt_time, size: 5
      t.string :doctor
      t.string :status
      t.boolean :first_visit, default: false

      t.timestamps
    end
  end
end
