class ScraperBrand < ApplicationRecord
  has_many :scraper_models

    def self.search(search)
      if search
        where('name LIKE ?', "%#{search}%")
        # find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
      else
        @brand = ScraperBrand.all
      end
    end

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
