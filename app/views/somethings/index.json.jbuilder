json.array!(@somethings) do |something|
  json.extract! something, :id, :name
  json.url something_url(something, format: :json)
end
