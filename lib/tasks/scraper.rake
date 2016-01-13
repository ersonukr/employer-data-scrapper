require 'nokogiri'
require 'open-uri'
require 'csv'


namespace :scraper do
desc "Fetching phone number from web"

task :read_url => :environment do
		CSV.foreach('/home/unnati/Downloads/salons_list.csv') do |row|
		  url = row.first
		  doc = Nokogiri::HTML(open(url))
		  shop_name = doc.at_css(".genral-heading").text
		  phone_number = doc.at_css(".phone-listing").text
		  Webfile.create(name: shop_name, phone_number:phone_number)
		end
	end

end
