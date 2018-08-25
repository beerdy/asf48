class CreateHostcoffes < ActiveRecord::Migration
  def change
    create_table :hostcoffes do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
