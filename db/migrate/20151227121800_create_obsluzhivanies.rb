class CreateObsluzhivanies < ActiveRecord::Migration
  def change
    create_table :obsluzhivanies do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
