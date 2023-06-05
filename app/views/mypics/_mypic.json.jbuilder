json.extract! mypic, :id, :image, :created_at, :updated_at
json.url mypic_url(mypic, format: :json)
