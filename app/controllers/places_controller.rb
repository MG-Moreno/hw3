class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
  end
  
  def create
    #new place
    @place = Place.new
    # assign user-entered form data
    @place["name"]=params["name"]
    # save Place row
    @place.save
    # redirect user
    redirect_to "/places"
  end

  def show
    #find a Place
    @place = Place.find_by({"id" => params["id"]})

    #Find ALL entries for ONE place 
    @entries = Entry.where({"place_id" => params["id"]})
  end

end
