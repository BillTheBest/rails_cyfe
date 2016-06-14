require 'rubygems'
require "rails_cyfe/version"
require 'httparty'
require 'net/http'

module  Cyfe
	class Rails_cyfe
		def push_uri(uri)
			@uri = uri
		end

		def counter(count)
			uri = URI(@uri)
			http = Net::HTTP.new(uri.host, uri.port)
			http.use_ssl = true
			request = Net::HTTP::Post.new(uri.request_uri, 
	        initheader = {'Content-Type' =>'application/json'})
			request.body = count
			resp = http.request(request)
		end
	end
end

  

