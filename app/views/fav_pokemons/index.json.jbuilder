json.array!(@fav_pokemons) do |fav_pokemon|
  json.extract! fav_pokemon, :id, :gen, :p_type, :pokemon, :integer
  json.url fav_pokemon_url(fav_pokemon, format: :json)
end
