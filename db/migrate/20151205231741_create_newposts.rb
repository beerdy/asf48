class CreateNewposts < ActiveRecord::Migration
  def change
    create_table :newposts do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
