class CreateHostmaps < ActiveRecord::Migration
  def change
    create_table :hostmaps do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
