class CreateBaners < ActiveRecord::Migration
  def change
    create_table :baners do |t|

      t.timestamps null: false
    end
  end
end
