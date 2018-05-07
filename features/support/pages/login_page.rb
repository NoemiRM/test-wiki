class Login_Page
  include PageObject
  link(:link_acceder, :xpath => ".//*[@id='pt-login']/a")
  text_field(:text_name, :name => "wpName")
  text_field(:text_password, :name => "wpPassword")
  button(:button_acceder, :name => "wploginattempt")
  link(:link_user, :xpath => ".//*[@id='pt-userpage']/a")

  def start_login()
    link_acceder_element.when_present(10).click
  end

  def enter_name(user)
    text_name_element.when_present(10).send_keys(user)
  end

  def enter_password(password)
    text_password_element.when_present(10).send_keys(password)
  end

  def submit_login()
    button_acceder_element.when_present(10).click
  end

  def user_login(user, password)
    enter_name(user)
    enter_password(password)
    submit_login
  end

  def get_name_user()
    link_user_element.when_present(10).text
  end

end