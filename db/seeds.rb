# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#brand => name:string
brands = Brand.create([
  {name: 'fiat'},
  {name: 'ford'},
  {name: 'honda'}])

#model => name:string, brand_id:integer
models = BrandModel.create([
                               {name: '500', brand_id: brands[0].id},
                               {name: 'focus', brand_id: brands[1].id},
                               {name: 'civic', brand_id: brands[2].id}
                           ])

# scraperBrands = ScraperBrand.create([
#                                         {name: 'alfa-romeo', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191366/alfa-romeo.html'},
#                                         {name: 'recambios-audi', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191367/recambios-audi.html'},
#                                         {name: 'chevrolet', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191371/chevrolet.html'},
#                                         {name: 'ford', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191376/ford.html'},
#                                         {name: 'hyundai', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191378/hyundai.html'},
#                                     ])
#
# scraperModels = ScraperModel.create([
#                                         {name: 'alfa-145', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310669/alfa-145.html', scraperBrands[0].id},
#                                         {name: 'alfa-147', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310671/alfa-147.html', scraperBrands[0].id},
#                                         {name: 'alfa-romeo-155', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310672/alfa-romeo-155.html', scraperBrands[0].id},
#                                         {name: 'alfa-156', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310673/alfa-156.html', scraperBrands[0].id},
#                                         {name: 'alfa-159"', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310674/alfa-159.html', scraperBrands[0].id},
#
#                                         {name: 'audi-a1', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310749/audi-a1.html'},
#                                         {name: 'audi-a2', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310750/audi-a2.html'},
#                                         {name: 'audi-a3', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310751/audi-a3.html'},
#                                         {name: 'audi-a4', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310753/audi-a4.html'},
#                                         {name: 'audi-a5', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c310760/audi-a5.html'},
#
#                                         {name: 'chevrolet-aveo', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311317/chevrolet-aveo.html'},
#                                         {name: 'chevrolet-captiva', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311318/chevrolet-captiva.html'},
#                                         {name: 'chevrolet-cruze', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311322/chevrolet-cruze.html'},
#                                         {name: 'chevrolet-lacetti', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311319/chevrolet-lacetti.html'},
#                                         {name: 'chevrolet-matiz', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311320/chevrolet-matiz.html'},
#
#                                         {name: 'ford-c-max', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311982/ford-c-max.html'},
#                                         {name: 'ford-escort', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311984/ford-escort.html'},
#                                         {name: 'ford-fiesta', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311985/ford-fiesta.html'},
#                                         {name: 'ford-focus', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311987/ford-focus.html'},
#                                         {name: 'ford-fusion', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311988/ford-fusion.html'},
#
#                                         {name: 'hyundai-accent', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c312038/hyundai-accent.html'},
#                                         {name: 'hyundai-atos', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c312039/hyundai-atos.html'},
#                                         {name: 'hyundai-elantra', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c312040/hyundai-elantra.html'},
#                                         {name: 'hyundai-getz', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c312041/hyundai-getz.html'},
#                                         {name: 'hyundai-h1', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c312042/hyundai-h1.html'},
#                                     ])
#
# scraperYear = ScraperYear.create([
#                                      {name: '1999', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191403/alfa-145-1999-.html'},
#                                      {name: '2000', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191405/alfa-147-2000-.html'},
#                                      {name: '2004', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191408/alfa-147-2004-.html'},
#                                      {name: '1993', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191415/alfa-romeo-155-1993-.html'},
#                                      {name: '1997', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191416/alfa-156-1997-.html'},
#                                      {name: '2003', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191417/alfa-156-2003--.html'},
#                                      {name: '2005', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191418/alfa-159-2005--.html'},
#
#
#                                      {name: '2010', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c252131/audi-a1-2010-.html'},
#                                      {name: '2000', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c252133/audi-a2-2000-.html'},
#                                      {name: '1996', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197835/audi-a3-1996-.html'},
#                                      {name: '2000', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197836/audi-a3-2000-.html'},
#                                      {name: '2003', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197837/audi-a3-2003-.html'},
#                                      {name: '2005', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197838/audi-a3-sport-back-2005-.html'},
#                                      {name: '2009', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197839/audi-a3-2009--.html'},
#                                      {name: '2013', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c339994/audi-a3-2013---.html'},
#                                      {name: '1994', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197840/audi-a4-1994-.html'},
#                                      {name: '2001', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197841/audi-a4-2001-.html'},
#                                      {name: '2004', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197842/audi-a4-2004-.html'},
#                                      {name: '2007', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197843/audi-a4-2007-.html'},
#                                      {name: '2012', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197844/audi-a4-2012-.html'},
#                                      {name: '07', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c229673/audi-a5-07-.html'},
#                                      {name: '09', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c252126/audi-a5-09-.html'},
#
#
#                                      {name: '2006', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c341606/chevrolet-aveo-2006--%26gt%3B-.html'},
#                                      {name: '2009', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197751/chevrolet-aveo-2009--%26gt%3B.html'},
#                                      {name: '2012', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c341607/chevrolet-aveo-2012--%26gt%3B.html'},
#                                      {name: '2007', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197752/chevrolet-captiva-2007-.html'},
#                                      {name: '2009', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c251653/chevrolet-cruze-2009-.html'},
#                                      {name: '2005', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197753/chevrolet-lacetti-2005--%26gt%3B.html'},
#                                      {name: '2005', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197754/chevrolet-matiz-2005-.html'},
#
#                                      {name: '2010', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c311983/ford-c-max-2010--%26gt%3B.html'},
#                                      {name: '1990', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191671/ford-escort-mk-v-1990-.html'},
#                                      {name: '1995', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191672/ford-escort-mk-vi-1995-.html'},
#                                      {name: '1989', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191674/ford-fiesta-1989-.html'},
#                                      {name: '1996', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191675/ford-fiesta-1996-.html'},
#                                      {name: '1999', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191676/ford-fiesta-1999-.html'},
#                                      {name: '2002', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191677/ford-fiesta-2002-.html'},
#                                      {name: '2005', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191678/ford-fiesta-2005-.html'},
#                                      {name: '2008', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191679/ford-fiesta-2008-.html'},
#                                      {name: '1998', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191680/ford-focus-1998-.html'},
#                                      {name: '2002', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191681/ford-focus-2002-.html'},
#                                      {name: '2004', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191682/ford-focus-2004-.html'},
#                                      {name: '2008', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c212488/ford-focus-2008-.html'},
#                                      {name: '2011', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c291884/ford-focus-2011--.html'},
#                                      {name: '2003', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191683/ford-focus-c-max-2003-.html'},
#                                      {name: '2006', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191684/ford-focus-c-max-2006-.html'},
#                                      {name: '2002', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c191685/ford-fusion-2002-.html'},
#                                      {name: '2006', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c215576/ford-fusion-2006--.html'},
#
#
#                                      {name: '1995', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197904/hyundai-accent-1995-.html'},
#                                      {name: '1998', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197905/hyundai-accent-1998-.html'},
#                                      {name: '2000', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197906/hyundai-accent-2000-.html'},
#                                      {name: '2003', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197907/hyundai-accent-2003-.html'},
#                                      {name: '2006', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197908/hyundai-accent-2006-.html'},
#                                      {name: '1998', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197909/hyundai-atos-1998.html'},
#                                      {name: '2004', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197911/hyundai-atos-2004.html'},
#                                      {name: '2000', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197910/hyundai-atos-prime-2000.html'},
#                                      {name: '2001', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197912/hyundai-elantra-1999-2001.html'},
#                                      {name: '2003', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197913/hyunday-elantra-2001-2003.html'},
#                                      {name: '2004', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197914/hyundai-elantra-2004--.html'},
#                                      {name: '2002', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197915/hyundai-getz-2002.html'},
#                                      {name: '2005', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197916/hyundai-getz-2005.html'},
#                                      {name: '1995', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197917/hyundai-h1-1995.html'},
#                                      {name: '2002', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c197918/hyundai-h1-2002.html'},
#                                      {name: '2005', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c312043/hyundai-h1-starex-2005.html'},
#                                      {name: '2008', url: 'https://www.autorecambiosmadridsur.es/recambiosmadridsur/c312044/hyundai-h1-starex-2008.html'}
#                                  ])
#
# scraperPart = ScraperPart.create([
#
#                                  ])