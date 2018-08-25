class CreateHostvremies < ActiveRecord::Migration
  def change
    create_table :hostvremies do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
