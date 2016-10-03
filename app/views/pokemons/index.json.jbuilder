json.array!(@pokemons) do |pokemon|
  json.extract! pokemon, :id, :name, :type1, :type2, :dexno
  json.url pokemon_url(pokemon, format: :json)
end
