When /^I am in 'top page'$/ do
  visit root_path
end

When /^I move to 'about page'$/ do
  click_link('About')
end

When /^I move to 'contact page'$/ do
  click_link('Contact')
end

Then /^I should see the page title "([^"]*)"$/ do |title|
  page.should have_title(title)
end

Then /^I should see the page header$/ do
  page.should have_selector('header nav.navbar')
end

Then /^I should see brand name in header$/ do
  page.should have_selector('a.navbar-brand')
end

Then /^I should see some links in header$/ do
  page.should have_selector('li > a')
end

Then /^I should see the page footer$/ do
  page.should have_selector('footer')
end

Then /^I should see copyright in footer$/ do
  page.should have_content('Copyright')
end

Then /^I should see the title "([^"]*)"$/ do |title|
  page.should have_content(title)
end

Then /^* should see the contents "([^"]*)"$/ do |contents|
  page.should have_content(contents)
  page.has_content?(contents)
end

