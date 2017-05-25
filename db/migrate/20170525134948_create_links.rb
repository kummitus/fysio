class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :url
      t.integer :publication_id
      t.string :type

      t.timestamps null: false
    end
  end
end
