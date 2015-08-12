require 'httparty'

module DribbleDemo
  class Client
    BASE_URI = "http://apu.dribbble.com"
    
    def shots(group)
      response = HTTParty.get(BASE_URI + "/shots/#{group}")
      JSON.parse(response.body)
    end
    
  end
end
