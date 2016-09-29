class ScrapperController < ApplicationController

  def index
    @brands = ScraperBrand.all
  end

  def show
    @brand = ScraperBrand.find(params[:id])
    @bmodels = ScraperModel.where(scraper_brand_id: params[:id])
  end

  def parts
    @bmodel = ScraperModel.where(scraper_year_id: params[:id])

    @parts = ScraperPart.where(scraper_year_id: params[:id])
  end

  def search
    # binding.pry
    @brand = ScraperBrand.search(params[:brand])
    @model = ScraperModel.search_model(params[:model])
    @year = ScraperYear.search_year(params[:year])
    # binding.pry
    puts params.inspect
  end

  # def result
  # 	@brand = params[:brand]
  #   Scrapper.get_brand
  #   # binding.pry
  # end

end
