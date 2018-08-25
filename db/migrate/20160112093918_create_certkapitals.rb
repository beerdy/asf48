class CreateCertkapitals < ActiveRecord::Migration
  def change
    create_table :certkapitals do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
