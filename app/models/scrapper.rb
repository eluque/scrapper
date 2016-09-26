class Scrapper < ApplicationRecord

  def self.agent
    agent = Mechanize.new { |agent|
      agent.user_agent_alias = 'Mac Safari'
    }
  end

  def self.getBrand()
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
      # puts "asdasdsa"
      # binding.pry
      if ScraperBrand.find_by(name: brands_name).nil?
        ScraperBrand.create({name: brands_name, url: brands_link})
      end
    end
    self.getModel
  end


def self.getModel
      link_by_model = {}
      agent = self.agent

        ScraperBrand.all.each do |brand|
        getModelName = brand.name
        url = brand.url

        page = agent.get(url)

        links_of_model = page.css('#contendora-items-cat a')
        link_model = links_of_model.each_slice(2).map(&:first)
        # links_of_model = page.css('#contendora-items-cat a')
        # link_model = links_of_model.each_slice(2).map(&:first)

        link_model.each do |name, url|
          getUrl = name.attributes['href'].value.split('/')
          getName = getUrl.last.gsub('.html', '')
          getUrl = getUrl.join('/')

          link_by_model[getName] = getUrl

          if ScraperModel.find_by(name: getName).nil?
            ScraperModel.create({name: getName, url: getUrl})
          end
        end
      end
    end
end

#

#
#
#
#
#
#
#
#   link_by_type = {}
#
#   link_by_model.each do |name, url|
#     getModel = name
#     url = url
#
#     page = agent.get(url)
#
#     link_type = page.css('.items-nombre-cat a')
#     link_type = link_type.each_slice(2).map(&:first)
#
#     link_type.each do |type, url|
#
#     get_type = type.attributes['href'].value.split('/')
#     # puts get_type
#     # puts /-(\d+)-*.?.html$/.match(get_type.last)
#     begin
#     get_type = /-(\d+)-*.?.html$/.match(get_type.last)[1]
#     rescue
#     puts 'se disparo un error'
#     end
#     getUrl = type.attributes['href'].value
#
#     link_by_type[get_type] = getUrl
#     end
#   # binding.pry
#   end
#
#
#
#
#
#
#
#
#   array_ano = []
#   link_by_type.each do |year, link|
#     getYear = year
#     url = link
#
#     page = agent.get("https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191403/alfa-145-1999-.html")
#
#     links_of_model = page.css('div#productos-nombre a')
#     # link_piece = links_of_model.each_slice(2).map(&:first)
#     binding.pry
#     #
#     for i in 0..(link_piece.length - 1)
#     piece_name = link_piece[i].text
#     array_ano.push(piece_name)
#     # binding.pry
#     end
#     binding.pry
#   end
#
# end
