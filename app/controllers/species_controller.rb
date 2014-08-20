class SpeciesController < ActionController::Base

  def index
    @specieses = Species.all
    render('index.html.erb')
  end

  def new
    @species = Species.new
    render('new.html.erb')
  end

  def create
    @species = Species.new(:name => params[:name])
    if @species.save
      redirect_to('#{@species.id}')
    else
      render('new.html.erb')
    end
  end

  def show
    @species = Species.find(params[:id])
    render('show.html.erb')
  end

  def edit
    @species = Species.find(params[:id])
    render('edit.html.erb')
  end

  def update
    @specieses = Species.all
    @species = Species.find(params[:id])
    if @species.update(params[:species])
      render('index.html.erb')
    else
      render('edit.html.erb')
    end
  end

  def destroy
    @specieses = Species.all
    @species = Species.find(params[:id])
    @species.delete
    render('index.html.erb')
  end
end
