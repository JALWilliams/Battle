feature 'Enter names' do
  scenario 'submitting names' do
    # What does the user have to do?
    visit('/')
    fill_in :Player1, with: 'Charlotte'
    fill_in :Player2, with: 'Mittens'
    click_button 'Submit'
    
    save_and_open_page # will save the web page and open the browser to display it

    # What does the user expect to see?
    expect(page).to have_content 'Charlotte vs. Mittens'
  end
end