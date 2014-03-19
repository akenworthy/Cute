json.array!(@yes_cutes) do |yes_cute|
  json.extract! yes_cute, :id, :Animal, :image_url, :cuteness_level
  json.url yes_cute_url(yes_cute, format: :json)
end
