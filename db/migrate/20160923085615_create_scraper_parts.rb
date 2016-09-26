class CreateScraperParts < ActiveRecord::Migration[5.0]
  def change
    create_table :scraper_parts do |t|
      t.string :name
      t.float :price
      t.references :scraper_year

      t.timestamps
    end
  end
end
