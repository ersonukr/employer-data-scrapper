json.array!(@webfiles) do |webfile|
  json.extract! webfile, :id, :name, :phone_number
  json.url webfile_url(webfile, format: :json)
end
