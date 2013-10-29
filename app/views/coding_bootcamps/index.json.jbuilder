json.array!(@coding_bootcamps) do |coding_bootcamp|
  json.extract! coding_bootcamp, :name
  json.url coding_bootcamp_url(coding_bootcamp, format: :json)
end
