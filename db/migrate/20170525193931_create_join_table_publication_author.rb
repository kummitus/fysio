class CreateJoinTablePublicationAuthor < ActiveRecord::Migration
  def change
    create_join_table :publications, :authors do |t|
      # t.index [:publication_id, :author_id]
      # t.index [:author_id, :publication_id]
    end
  end
end