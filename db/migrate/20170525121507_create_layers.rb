class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
