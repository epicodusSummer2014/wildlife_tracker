class SightingsController < ActionController::Base

  def create
    @sightings = Sighting.all
    @species = Species.find(params[:id])
    @sighting = @species.sightings.create(params[:sighting])
    redirect_to("/#{@species.id}")
  end

  def show
    @regions = Region.all
    @sighting = Sighting.find(params[:id])
    @species = Species.find(@sighting.species_id)
    render('/sighting/show.html.erb')
  end

  def update
    @regions = Region.all
    @sighting = Sighting.find(params[:id])
    @species = Species.find(@sighting.species_id)
    @sighting.update(params[:sighting])
    render('/sighting/show.html.erb')
  end

  def destroy
    @sighting = Sighting.find(params[:id])
    @species = Species.find(@sighting.species_id)
    @sighting.delete
    redirect_to("/#{@species.id}")
  end

  def report
    @sightings = Sighting.all
    render('/reports/sighting_report.html.erb')
  end
end


