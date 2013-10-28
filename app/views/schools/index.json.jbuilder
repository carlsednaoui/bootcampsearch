json.array!(@schools) do |school|
  json.extract! school, :name
  json.url school_url(school, format: :json)
end
