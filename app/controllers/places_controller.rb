class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

    #def show
  #   # find a Company
  #@company = Company.find_by({"id" => params["id"]})
  #@contacts = Contact.where({"company_id" => @company["id"]})
  #   # render companies/show view with details about Company
  #end

  def new
    @place = Place.new  
    end

end
