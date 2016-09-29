class ScraperModel < ApplicationRecord
  has_many :scraper_years
  belongs_to :scraper_brand

    def self.search_model(search)
      if search
        where('name LIKE ?', "%#{search}%")
        # find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
      else
        @model = ScraperModel.all
      end
    end

    def create
      @model = ScraperModel.new(model_params)
    end

    def show
      @model = ScraperModel.find(params[:id])
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
