class SightingsController < ActionController::Base

  def create
    @sightings = Sighting.all
    @species = Species.find(params[:id])
    @sighting = @species.sightings.create(params[:sighting])
    redirect_to("/#{@species.id}")
  end

  def show
    @sighting = Sighting.find(params[:id])
    @species = Species.find(@sighting.species_id)
    render('/sighting/show.html.erb')
  end
end


