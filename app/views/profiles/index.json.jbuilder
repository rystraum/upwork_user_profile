json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :selected_options
  json.url profile_url(profile, format: :json)
end
