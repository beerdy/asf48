class CreateCertobsluzhis < ActiveRecord::Migration
  def change
    create_table :certobsluzhis do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
