module PokemonsHelper
  def pokemon_types
    {'Grass' => 0, 'Fire' => 1, 'Water' => 2, 'Electric' => 3, 'Ground' => 4, 'Rock' => 5, 'Steel' => 6, 'Bug' => 7, 'Flying' => 8, 'Poison' => 9, 'Ice' => 10, 'Normal' => 11, 'Fighting' => 12, 'Psychic' => 13, 'Ghost' => 14, 'Dark' => 15, 'Dragon' => 16, 'Fairy' => 17}
  end

  def type_name(type)
    hash = pokemon_types
    hash.key(type)
  end

  def pokemon_type_options(selected)
    options_for_select( pokemon_types , selected)
  end
end
