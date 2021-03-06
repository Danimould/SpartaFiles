require "httparty"
require "json"

class SinglePostcodeService
  include HTTParty
  base_uri 'http://api.postcodes.io'

  attr_accessor :single_postcode, :random_postcode

  def get_single_postcode postcode
    @single_postcode = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_random_postcode
    @random_postcode = JSON.parse(self.class.get('/random/postcodes').body)
  end

  def get_single_postcode_result
    @single_postcode["result"]
  end


  def get_random_postcode_result
    @random_postcode["result"]
  end
end
