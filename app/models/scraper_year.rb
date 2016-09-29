class ScraperYear < ApplicationRecord
  has_many :scraper_parts
  belongs_to :scraper_model


    def self.search_year(search)
      if search
        where('name LIKE ?', "%#{search}%")
        # find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
      else
        @year = ScraperYear.all
      end
    end

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
