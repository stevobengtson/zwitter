json.array!(@grunts) do |grunt|
  json.extract! grunt, :id, :message, :zombie_id
  json.url grunt_url(grunt, format: :json)
end
