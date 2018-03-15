class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
t.string :category
      t.string :fname
      t.string :lname
      t.string :email
      t.string :phone
      t.string :subject
      t.text :message
      t.boolean :display, default: true
      t.timestamps

    end
  end
end
