Given(/^An user is on search Page$/) do
  @browser.goto "https://es.wikipedia.org/w/index.php?search"
end

And(/^User search "([^"]*)"$/) do |data|
  on(SearchPage).search_something(data)
end

And(/^Search Page shows results with "([^"]*)"$/) do |data|
  auxResult = on(SearchPage).get_results_current_page
  auxResult.each do |result|
    result.upcase.should include(data.upcase)
  end

end