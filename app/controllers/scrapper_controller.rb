class ScrapperController < ApplicationController

  def search
  end

  def result
  	@brand = params[:brand]
    Scrapper.get_brand
    # binding.pry
  end

end
