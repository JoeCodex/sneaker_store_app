require 'nokogiri'
require 'open-uri'


class Product < ActiveRecord::Base
  
  has_attached_file :photo,
    :styles => { 
  	:medium => "250x200>", 
  	:large => "750x600>" }, 
  	:default_url => "/images/:style/missing.png"

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	def self.retrieve_new_products
		url = "http://www.nicekicks.com/sneaker-release-dates/"
		data = Nokogiri::HTML(open(url))
		sneakers = data.css(".hentry")
		# p sneakers
		sneakers.shift
		sneakers.each do |sneaker|
			name = sneaker.css('.entry-title a').text
			date = sneaker.css('.dtstart').text
			price = sneaker.css('.tribe-events-event-cost span').text[1..-1]
			Product.create(name: name, release: date, price: price, 
						   inshop: false)

		end

	end
end



