class CreateScraperModels < ActiveRecord::Migration[5.0]
  def change
    create_table :scraper_models do |t|
      t.string :name
      t.string :url
      t.references :scraper_brand

      t.timestamps
    end
  end
end
