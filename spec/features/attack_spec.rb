feature 'Attack' do
  scenario 'attack Player 2 & get a confirmation' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('Mittens: 190 points')
  end

end