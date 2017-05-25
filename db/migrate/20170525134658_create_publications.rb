class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :name
      t.string :abstract
      t.integer :year
      t.string :journal

      t.timestamps null: false
    end
  end
end
