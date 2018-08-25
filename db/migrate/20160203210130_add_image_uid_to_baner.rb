class AddImageUidToBaner < ActiveRecord::Migration
  def change
  	add_column :baners, :image_uid, :string
  end
end
