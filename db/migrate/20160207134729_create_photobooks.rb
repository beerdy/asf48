class CreatePhotobooks < ActiveRecord::Migration
  def change
    create_table :photobooks do |t|
      t.string :title
      t.string :description
      t.string :image_uid

      t.timestamps null: false
    end
  end
end
