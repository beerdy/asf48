class CreateShinniyservices < ActiveRecord::Migration
  def change
    create_table :shinniyservices do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end