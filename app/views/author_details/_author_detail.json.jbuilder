json.extract! author_detail, :id, :name, :age, :mobileno, :created_at, :updated_at
json.url author_detail_url(author_detail, format: :json)
