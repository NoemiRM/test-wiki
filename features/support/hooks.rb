require 'webdrivers'

Before do |scenario|
  DataMagic.load_for_scenario(scenario)
end

Before('@web') do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = Watir::Browser.new :chrome
end

Before('@api') do

end

After('@web') do
  @browser.close
end