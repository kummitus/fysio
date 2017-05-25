class CreateJoinTablePublicationCategory < ActiveRecord::Migration
  def change
    create_join_table :publications, :categories do |t|
      # t.index [:publication_id, :category_id]
      # t.index [:category_id, :publication_id]
    end
  end
end
