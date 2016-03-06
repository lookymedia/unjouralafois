class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.text :message

      t.timestamps null: false
    end
  end
end
