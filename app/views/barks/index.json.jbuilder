json.array!(@barks) do |bark|
  json.extract! bark, :id, :full_name, :dog
  json.url bark_url(bark, format: :json)
end
