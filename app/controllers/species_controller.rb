class SpeciesController < ActionController::Base

  def index
    @specieses = Species.all
    render('/species/index.html.erb')
  end

  def new
    @species = Species.new
    render('/species/new.html.erb')
  end

  def create
    @species = Species.new(:name => params[:name])
    if @species.save
      render('/species/success.html.erb')
    else
      render('/species/new.html.erb')
    end
  end

  def show
    @species = Species.find(params[:id])
    render('/species/show.html.erb')
  end

  def edit
    @species = Species.find(params[:id])
    render('/species/edit.html.erb')
  end

  def update
    @specieses = Species.all
    @species = Species.find(params[:id])
    if @species.update(params[:species])
      render('/species/index.html.erb')
    else
      render('/species/edit.html.erb')
    end
  end

  def destroy
    @specieses = Species.all
    @species = Species.find(params[:id])
    @species.delete
    render('/species/index.html.erb')
  end
end
