feature 'Sing in', :devise do
  
=begin
  Para que funcione factoryGirl, tiene que existe una carpeta spec/factories/users.rb  
=end
  
  scenario 'user cannot sign in if not registered' do
    signin('test@example.com', 'plase123')
    expect(page).to have_content I18n.t 'devise.failure.not_found_in_database'
  end
  
  # Scenario: User can sign in with valid credentials
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with valid credentials
  #   Then I see a success message
  scenario 'user can sign in with valid credentials' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
  end
  
  # Scenario: User cannot sign in with wrong email
  #   Given I exist as a user
  #   And I am not signed in
  #   When I sign in with a wrong email
  #   Then I see an invalid email message
  scenario 'user cannot sign in with wrong email' do
    user = FactoryGirl.create(:user)
    signin('invalid@email.com', user.password)
    expect(page).to have_content I18n.t 'devise.failure.not_found_in_database'
  end
  
  # Scenario: User cannot sign in with wrong password
  # Given I exist as a user
  # And I am not signed in
  # When I sign in with a wrong password
  # Then I see an invalid password message
  scenario 'user cannot sign in with wrong email' do
    user = FactoryGirl.create(:user)
    signin(user.email, 'invalidpass')
    expect(page).to have_content I18n.t 'devise.failure.invalid'
  end

end
