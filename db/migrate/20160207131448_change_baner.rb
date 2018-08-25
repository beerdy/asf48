class ChangeBaner < ActiveRecord::Migration
  def change
  	change_table :baners do |t|
  		t.string :title
  		t.string :description
  	end
  end
end
