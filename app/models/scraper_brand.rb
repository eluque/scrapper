class ScraperBrand < ApplicationRecord

  def create
    @brand = ScraperBrand.new(brand_params)
  end

  def update
    @brand = ScraperBrand.find(params[:id])
    @brand.update
  end

  private
  def brand_params
    params.require(:scraper_brand).permit(:name, :url)
  end

end
