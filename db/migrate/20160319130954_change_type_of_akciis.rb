class ChangeTypeOfAkciis < ActiveRecord::Migration
  def change
  	change_column :akciis, :description, :text
  end
end
