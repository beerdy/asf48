class CreateCertpodveskas < ActiveRecord::Migration
  def change
    create_table :certpodveskas do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
