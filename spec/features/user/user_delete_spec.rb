include Warden::Test::Helpers
Warden.test_mode!

# Feature: User delete
#   As a user
#   I want to delete my user profile
#   So I can close my account
feature 'User delete', :devise, :js do
  
  after(:each) do
    Warden.test_reset!
  end
  
  scenario 'user can delete own account' do
    skip 'skip a slow test'
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit edit_user_registration_path(user)
    click_button 'Cancel my account'
    page.driver.browser.switch_to.alert.accept
    expect(page).to have content 'Bye! Your account was successfully cancelled. We hope to see you again soon.'
  end
end
