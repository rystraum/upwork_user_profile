json.array!(@options) do |option|
  json.extract! option, :id, :name, :parent_option_id
  json.url option_url(option, format: :json)
end
