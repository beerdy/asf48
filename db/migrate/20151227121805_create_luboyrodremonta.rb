class CreateLuboyrodremonta < ActiveRecord::Migration
  def change
    create_table :luboyrodremonta do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
