class ResultSection
  include PageObject

  ROOT_ELEMENT_LOCATOR ||= 'mw-search-result'

  element(:link_title,:xpath => ".//div[@class='mw-search-result-heading']/a")
  element(:div_abstract,:xpath => ".//div[@class='searchresult']/")
  element(:div_data,:xpath => ".//div[@class='mw-search-result-data']/")

  def get_title_result
    link_title_element.when_present(5).text
  end

  def get_abstract_result
    div_abstract_element.when_present(5).text
  end

end