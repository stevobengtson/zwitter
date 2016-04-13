json.array!(@graveyards) do |graveyard|
  json.extract! graveyard, :id, :name, :address
  json.url graveyard_url(graveyard, format: :json)
end
