class ListSection
  include PageObject

  ROOT_ELEMENT_LOCATOR ||= "//ul[@class='mw-search-results']"

  element(:span_title,:xpath => ".//div[@class='mw-search-result-heading']/a/span")
  element(:div_abstract,:xpath => ".//div[@class='searchresult']/")
  element(:div_data,:xpath => ".//div[@class='mw-search-result-data']/")

  def get_title_result
    span_title_element.when_present(5).text
  end

  def get_abstract_result
    div_abstract_element.when_present(5).text
  end

end