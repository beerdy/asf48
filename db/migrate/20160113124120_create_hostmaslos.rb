class CreateHostmaslos < ActiveRecord::Migration
  def change
    create_table :hostmaslos do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
