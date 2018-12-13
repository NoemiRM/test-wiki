Given(/^An user is in the web site$/) do
  @browser.goto "https://es.wikipedia.org/wiki/Wikipedia:Portada"
end

And(/^the user enter credentials to sign in with the following credentials:$/) do |table|
  access = table.transpose.hashes.first
  on(Login_Page).start_login
  on(Login_Page).user_login(access['user'],access['pass'])
end

And(/^the user should have see "([^"]*)" as name user$/) do |name_user|
  on(Login_Page).get_name_user.to_s.should == name_user

end