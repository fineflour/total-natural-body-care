class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :question, index: true
      t.text :answer
      t.string :entered_by
      t.timestamps
    end
  end
end
