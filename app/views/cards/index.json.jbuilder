json.array!(@cards) do |card|
  json.extract! card, :id, :name, :category, :is_used
  json.url card_url(card, format: :json)
end
