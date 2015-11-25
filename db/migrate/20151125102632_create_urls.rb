class CreateUrls < ActiveRecord::Migration
	def self.up 
		create_table :urls do |t|
			t.string :long_url
			t.string :short_url
			t.timestamps null: false
		end
	end
end
