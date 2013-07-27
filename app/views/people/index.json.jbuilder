json.array!(@people) do |person|
  json.extract! person, :first, :last, :email, :company
  json.url person_url(person, format: :json)
end
