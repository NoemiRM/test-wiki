require_relative '../support/service_helper'
require 'json'

module Services_Helper

  def request_weather_by_id_city(id_city)
    begin
      key = "b1fb33ebcd6ffc92508e4dfaf0208976"
      service_url = "api.openweathermap.org/data/2.5/forecast?id=#{id_city}&APPID=#{key}"
      get_info = {:url => service_url}
      @current_response = ServiceHelper.send_get(get_info)

      return @current_response
    rescue => error
      puts "Error #{error}"
    end

  end

end
World(Services_Helper)