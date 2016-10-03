class FavPokemonsController < ApplicationController
  before_action :set_fav_pokemon, only: [:show, :edit, :update, :destroy]

  # GET /fav_pokemons
  # GET /fav_pokemons.json
  def index
    @fav_pokemons = FavPokemon.all
  end

  # GET /fav_pokemons/1
  # GET /fav_pokemons/1.json
  def show
  end

  # GET /fav_pokemons/new
  def new
    @fav_pokemon = FavPokemon.new
  end

  # GET /fav_pokemons/1/edit
  def edit
  end

  # POST /fav_pokemons
  # POST /fav_pokemons.json
  def create
    @fav_pokemon = FavPokemon.new(fav_pokemon_params)

    respond_to do |format|
      if @fav_pokemon.save
        format.html { redirect_to @fav_pokemon, notice: 'Fav pokemon was successfully created.' }
        format.json { render :show, status: :created, location: @fav_pokemon }
      else
        format.html { render :new }
        format.json { render json: @fav_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fav_pokemons/1
  # PATCH/PUT /fav_pokemons/1.json
  def update
    respond_to do |format|
      if @fav_pokemon.update(fav_pokemon_params)
        format.html { redirect_to @fav_pokemon, notice: 'Fav pokemon was successfully updated.' }
        format.json { render :show, status: :ok, location: @fav_pokemon }
      else
        format.html { render :edit }
        format.json { render json: @fav_pokemon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fav_pokemons/1
  # DELETE /fav_pokemons/1.json
  def destroy
    @fav_pokemon.destroy
    respond_to do |format|
      format.html { redirect_to fav_pokemons_url, notice: 'Fav pokemon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fav_pokemon
      @fav_pokemon = FavPokemon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fav_pokemon_params
      params.require(:fav_pokemon).permit(:gen, :p_type, :pokemon_id)
    end
end
