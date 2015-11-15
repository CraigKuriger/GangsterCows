json.array!(@calves) do |calf|
  json.extract! calf, :id, :name, :cow_id
  json.url calf_url(calf, format: :json)
end
