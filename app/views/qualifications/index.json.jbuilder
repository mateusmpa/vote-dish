json.array!(@qualifications) do |qualification|
  json.extract! qualification, :id, :customer_id, :restaurant_id, :note, :amount_spent
  json.url qualification_url(qualification, format: :json)
end
