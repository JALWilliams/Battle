feature 'Attack' do
  scenario 'attack Player 2 & get a confirmation' do
    sign_in_and_play
    click_button 'Attack!'
    click_button "Ok"
    expect(page).not_to have_content('"Mittens: 200 points"')
    expect(page).to have_content('"Mittens: 10 points"')
  end

end