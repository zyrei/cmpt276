class LocationsController < InheritedResources::Base



def index
  if params[:search].present?
    @locations = Location.near(params[:search], 50, :order => :distance)
  else
    @locations = Location.all
  end
end


  private

    def location_params
      params.require(:location).permit(:address, :latitude, :longitude)
    end
end

