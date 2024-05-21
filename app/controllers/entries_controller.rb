class EntriesController < ApplicationController

  def index
  end

  def new
    @place = Place.find_by({ "id" => params["place_id"]})
  end

  def create    
    # start with a new Entry
    @entry = Entry.new
    # assign user-entered form data
    @entry["title"]=params["title"]
    @entry["description"]=params["description"]
    @entry["posted_on"]=params["posted_on"]
    # save Entry
    @entry.save
    # redirect user to place
    redirect_to "/places"
  end

end
