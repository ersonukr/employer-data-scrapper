
require 'nokogiri'
require 'open-uri'
require 'csv'


namespace :scraper do
desc "Fetching phone number from web"

task :read_url => :environment do
		CSV.foreach('/home/unnati/Downloads/client _csv/Pankaj_client.csv') do |row|
		  url = row.fourth
		  category = row.second
		  shop_name = row.third
		  area = row.last
		   doc = Nokogiri::HTML(open(url))
		  if doc.present?
			  phone_number = (doc.at_css(".phone-listing").present? ? doc.at_css(".phone-listing").text : "Not Available")
			  doc.search('span').remove
				address = (doc.at('h2').try(:text).present? ? doc.at('h2').try(:text) : "Not Available")
			  Webfile.create(category:category, name: shop_name, phone_number:phone_number, address:address, area:area)
			end
		end
		puts "okkkkkkkkkkkk"
	end

end
