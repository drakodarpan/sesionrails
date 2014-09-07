# Scenario: Visitor can sign up with valid email address and password
#   Given I am not signed in
#   When I sign up with a valid email address and password
#   Then I see a successful sign up message
feature 'Sign up' do
  scenario 'visitor can sign up with valid email address and password' do
    sign_up_with('test@example.com', 'please123', 'please123')
    expect(page).to have_content 'Welcome! You have signed up successfully'
    
    # sign_up_with('test@example.com', 'please123', 'mismatch')
    # expect(page).to have_content "Password confirmation doesn't match"
  end
end