json.array!(@suggestions) do |suggestion|
  json.extract! suggestion, :id, :image, :description, :user_id
  json.url suggestion_url(suggestion, format: :json)
end


