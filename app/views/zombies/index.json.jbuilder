json.array!(@zombies) do |zombie|
  json.extract! zombie, :id, :name, :graveyard_id, :status
  json.url zombie_url(zombie, format: :json)
end
