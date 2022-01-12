feature 'View hit points'do 
  scenario 'see Player 2 hit points' do 
    sign_in_and_play

    # what does the user expect to see? 
    expect(page).to have_content ("Mittens: 200 points")
  end

end