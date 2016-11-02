class PokemonsController < ApplicationController
	def new
		@pokemon = Pokemon.new()
	end
	def create
		p = Pokemon.create(name: params["pokemon"]["name"])
		if p.valid?
	      	p.update(level: 1, trainer_id: current_trainer.id, health: 100)
	      	redirect_to '/trainers/' + current_trainer.id.to_s
	    else 
	      	redirect_to '/pokemons/new'
	      	flash[:error] = p.errors.full_messages.to_sentence
	    end
	end
	def capture
		p = Pokemon.find(params[:id])
		p.trainer_id = current_trainer.id
		p.save
		redirect_to '/'
	end
	def damage
		p = Pokemon.find(params[:p_id])
		p.health = p.health - 10
		p.save
		if p.health < 1
			p.destroy
		end
		redirect_to '/trainers/' + params[:t_id].to_s
		
	end
end
