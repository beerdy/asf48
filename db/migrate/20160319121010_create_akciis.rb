class CreateAkciis < ActiveRecord::Migration
  def change
    create_table :akciis do |t|
      t.string :title
      t.string :description
      t.string :image_uid

      t.timestamps null: false
    end
  end
end
