class RegionsController < ActionController::Base

  def all_regions
    @regions = Region.all
    render('/regions/all_regions.html.erb')
  end

  def create
    Region.create(params[:region])
    redirect_to("/regions")
  end

  def show
    @region = Region.find(params[:id])
    render('/regions/show.html.erb')
  end

  def update
    @region = Region.find(params[:id])
    @region.update(params[:region])
    redirect_to("/regions/#{@region.id}")
  end

  def destroy
    @region = Region.find(params[:id])
    @region.delete
    redirect_to("/regions")
  end
end


