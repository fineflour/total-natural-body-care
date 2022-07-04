class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :ptsrcs do |t|

      t.string :title
      t.text :body
      t.string :category
      t.string :link
      t.string :attached
      t.boolean :active
      t.boolean :public
      t.date :created_at
      t.date :updated_at

      t.timestamps
    end
  end
end
