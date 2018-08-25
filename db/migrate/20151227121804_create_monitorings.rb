class CreateMonitorings < ActiveRecord::Migration
  def change
    create_table :monitorings do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
