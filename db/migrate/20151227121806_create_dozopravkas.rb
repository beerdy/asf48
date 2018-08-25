class CreateDozopravkas < ActiveRecord::Migration
  def change
    create_table :dozopravkas do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
