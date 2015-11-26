require 'securerandom'

class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	validates :long_url, presence: true
	validates :long_url, format: { with: URI.regexp }, if: Proc.new { |a| a.long_url.present? }

	before_create :shorten

	def shorten
		self.short_url = SecureRandom.hex(6)
	end


end



