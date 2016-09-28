class ScraperPart < ApplicationRecord
  belongs_to :scraper_year

    def create
      @parts = ScraperPart.new(parts_params)
    end

    def update
      @parts = ScraperPart.find(params[:id])
      @parts.update
    end

    private
    def parts_params
      params.require(:scraper_part).permit(:name, :price)
    end

end
