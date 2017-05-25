json.extract! publication, :id, :name, :abstract, :year, :link_id, :author_id, :journal, :category_id, :created_at, :updated_at
json.url publication_url(publication, format: :json)
