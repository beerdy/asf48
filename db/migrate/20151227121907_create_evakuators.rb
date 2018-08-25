class CreateEvakuators < ActiveRecord::Migration
  def change
    create_table :evakuators do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
