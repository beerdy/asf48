class AddImageUidToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :image_uid, :string
  end
end
