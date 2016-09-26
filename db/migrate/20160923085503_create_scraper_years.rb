class CreateScraperYears < ActiveRecord::Migration[5.0]
  def change
    create_table :scraper_years do |t|
      t.string :name
      t.string :url
      t.references :scraper_model

      t.timestamps
    end
  end
end
