json.array!(@clowns) do |clown|
  json.extract! clown, :name, :age, :color
  json.url clown_url(clown, format: :json)
end