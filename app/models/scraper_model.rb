class ScraperModel < ApplicationRecord
  has_many :scraper_years
  belongs_to :scraper_brand

    def create
      @model = ScraperModel.new(model_params)
    end

    def update
      @model = ScraperModel.find(params[:id])
      @model.update
    end

    private
    def model_params
      params.require(:scraper_model).permit(:name, :url)
    end

end
