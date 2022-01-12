def sign_in_and_play
  # What does the user have to do?
  visit('/')
  fill_in :Player1, with: 'Charlotte'
  fill_in :Player2, with: 'Mittens'
  click_button 'Submit'
end