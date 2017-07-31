class LocationsController < InheritedResources::Base
 

 def edit
 	@user = DeviseUser.find(current_devise_user.id)
 end

 def update
 	@user = DeviseUser.find(current_devise_user.id)
 	@user.update_attributes(params[:address, :latitude, :longitude])
 end


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

