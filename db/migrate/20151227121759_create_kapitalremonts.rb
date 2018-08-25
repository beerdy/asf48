class CreateKapitalremonts < ActiveRecord::Migration
  def change
    create_table :kapitalremonts do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
