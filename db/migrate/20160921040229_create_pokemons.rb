class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :type1
      t.integer :type2
      t.integer :dexno

      t.timestamps null: false
    end
  end
end
