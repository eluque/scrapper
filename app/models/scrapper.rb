class Scrapper < ApplicationRecord

          def self.agent
            agent = Mechanize.new { |agent|
              agent.user_agent_alias = 'Mac Safari'
            }
          end


          def self.get_brand

            agent = self.agent
            url = 'https://www.autorecambiosmadridsur.es/'
            page = agent.get(url)

            links_by_car = {}
            links_of_cars = page.css('#principal-b a')

            for i in 0..(links_of_cars.length - 2)
              brands_link = links_of_cars[i].attributes['href'].value.split('/')
              brands_name = brands_link.last.gsub('.html', '')
              brands_link = brands_link.join('/')

              links_by_car[brands_name] = brands_link

              if ScraperBrand.find_by(name: brands_name).nil?
                ScraperBrand.create({name: brands_name, url: brands_link})
              end

            end

            self.get_model
          end


          def self.get_model
              link_by_model = {}
              agent = self.agent

              ScraperBrand.all.each do |brand|
                get_model_name = brand.name
                url = brand.url
                id = brand.id

                page = agent.get(url)

                links_of_model = page.css('#contendora-items-cat a')
                link_model = links_of_model.each_slice(2).map(&:first)

                link_model.each do |name, url|
                  get_url = name.attributes['href'].value.split('/')
                  get_name = get_url.last.gsub('.html', '')
                  get_url = get_url.join('/')

                  link_by_model[get_name] = get_url

                  if ScraperModel.find_by(name: get_name).nil?
                    ScraperModel.create({name: get_name, url: get_url, scraper_brand_id: id})
                  end
                end
              end
            # binding.pry
            self.get_year
          end

          def self.get_year
            link_by_type = {}
            agent = self.agent
            not_get=0
            ScraperModel.all.each do |model|

              get_model = model.name
              url = model.url
              id = model.id

              page = agent.get(url)

              link_type = page.css('.items-nombre-cat a')
              link_type = link_type.each_slice(2).map(&:first)

              link_type.each do |type, url|
                 get_type = type.attributes['href'].value.split('/')

                 begin
                   get_type = /-(\d+)-*(([0-9]{5}|[0-9]{1})?)-*.html$/.match(get_type.last.gsub('%26gt%3B', ''))[1]
                 rescue
                   puts get_type
                 end

                 get_url = type.attributes['href'].value

                 if !(get_type.class == Array)
                   link_by_type[get_model+'-'+get_type] = get_url

                     if ScraperYear.find_by(name: get_model+'-'+get_type).nil?
                       ScraperYear.create({name: get_model+'-'+get_type, url: get_url, scraper_model_id: id})
                     end
                 else
                   not_get +=1
                 end
              end
            end
            # binding.pry
            self.get_piece
          end

    def self.get_piece
      agent = self.agent
      data = {}

      ScraperYear.all.each do |item|
        model_piece = item.name
        url = item.url
        id = item.id

        page = agent.get(url)

        link = page.css('div#productos-nombre a')
        link_piece = link.each_slice(1).map(&:first)

          for i in 0..(link_piece.length - 1)
            piece_url = link_piece[i].attributes['href'].value

            page = agent.get(piece_url)

            get_data_name = page.css('div#principal-text').css('span')[5].text
            get_data_price = page.css('div#principal-text').css('span')[8].text

            data[get_data_name] = get_data_price

            if ScraperPart.find_by(name: get_data_name).nil?
              # puts "#{get_data_name} - #{get_data_price} - #{id}"
              ScraperPart.create({name: get_data_name, price: get_data_price, scraper_year_id: id})
            end
          end
      # binding.pry
        end
      end
end
