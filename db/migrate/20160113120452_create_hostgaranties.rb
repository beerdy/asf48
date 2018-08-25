class CreateHostgaranties < ActiveRecord::Migration
  def change
    create_table :hostgaranties do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
