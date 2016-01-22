class Webfile < ActiveRecord::Base


	def self.to_csv(options = {})
	  CSV.generate(options) do |csv|
	    csv.add_row column_names
	    all.each do |webfile|
	      values = webfile.attributes.values
	      csv.add_row values
	    end
	  end
	end
end
