class SearchPage
  include PageObject

  text_field(:input_search, :id => "ooui-php-1")
  button(:btn_search, :xpath => "//button[@class='oo-ui-inputWidget-input oo-ui-buttonElement-button']")
  page_sections(:result_row, ResultSection, :class => ResultSection::ROOT_ELEMENT_LOCATOR)

  def search_something(data)
    input_search_element.when_present(2).send_keys(data, :enter)
  end

  def get_results_current_page
    results = []
    result_row.each do |row|
      results.push(row.get_title_result)
    end
    results
  end

end