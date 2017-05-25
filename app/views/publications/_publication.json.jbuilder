json.extract! publication, :id, :name, :abstract, :year, :link_id, :journal, :created_at, :updated_at
json.url publication_url(publication, format: :json)
