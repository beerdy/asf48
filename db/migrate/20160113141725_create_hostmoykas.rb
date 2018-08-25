class CreateHostmoykas < ActiveRecord::Migration
  def change
    create_table :hostmoykas do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
