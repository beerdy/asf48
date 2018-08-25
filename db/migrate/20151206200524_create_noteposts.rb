class CreateNoteposts < ActiveRecord::Migration
  def change
    create_table :noteposts do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
