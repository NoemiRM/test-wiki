#todo
Given (/^An user requests to know the weather$/) do

end

When (/^the user requests information of the city with id "([^"]*)"$/) do |city_id|
  request_weather_by_id_city(city_id)
end

Then (/^the system returns the weather of request city$/) do
  @getted_data = JSON.parse(@current_response)
end

Given (/^the system shows following city's information:$/) do |table|
  expected_data_city = table.transpose.hashes.first
  step"the system returns the weather of request city"
  getted_data_city = @getted_data['city']
  getted_data_city['name'].to_s.should == expected_data_city['name']
  getted_data_city['id'].to_s.should == expected_data_city['id']
  getted_data_city['country'].to_s.should == expected_data_city['country']

end

Then (/^the response of the system should be (\d+)$/) do |status_code|
  puts status_code
end