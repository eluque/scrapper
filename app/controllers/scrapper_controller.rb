class ScrapperController < ApplicationController

  def search
  end

  def result  	
  	@brand = params[:brand]
    Scrapper.getBrand()
    # Scrapper.getBrand(@brand) ???
  end

end
