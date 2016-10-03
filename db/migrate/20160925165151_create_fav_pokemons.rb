class CreateFavPokemons < ActiveRecord::Migration
  def change
    create_table :fav_pokemons do |t|
      t.integer :gen
      t.integer :p_type
      t.references :pokemon

      t.timestamps null: false
    end
  end
end
