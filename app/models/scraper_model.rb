class ScraperModel < ApplicationRecord

  def create
    @brand = ScraperModel.new(model_params)
  end

  def update
    @brand = ScraperModel.find(params[:id])
    @brand.update
  end

  private
  def model_params
    params.require(:scraper_model).permit(:name, :url)
  end

end
