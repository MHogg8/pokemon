require_relative('../models/pokemon.rb')
require_relative('../models/trainer.rb')
require_relative('../models/owned_pokemon.rb')



get '/ownedpokemon/new' do
  #NEW
  @trainers = Trainer.all
  @pokemon = Pokemon.all
  erb :"owned/new"
end


post '/ownedpokemon' do
  #CREATE
  @owned = OwnedPokemon.new( params )
  @owned.save()
  redirect to("/")
end
