class ScraperYear < ApplicationRecord
  has_many :scraper_parts
  belongs_to :scraper_model

    def create
      @year = ScraperYear.new(year_params)
    end

    def update
      @year = ScraperYear.find(params[:id])
      @yearl.update
    end

    private
    def year_params
      params.require(:scraper_year).permit(:name, :url)
    end

end
