feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end


# CAPYBARA CHEAT SHEET:  https://thoughtbot.com/upcase/test-driven-rails-resources/capybara.pdf