module Features
  module SessionHelpers
    def sign_up_with(email, password, confirmation)
      visit new_user_registration_path
      # fill_in 'Email', :with => email
      fill_in 'Account number', :with => account_number
      fill_in 'Password', :with => password
      fill_in 'Password confirmation', :with => confirmation
      click_button 'Sign up'
    end
    
    # def signin(email, password)
    def signin(account_number, password)
      visit new_user_session_path
      # fill_in 'Email', :with => email
      fill_in 'Account number', :with => account_number
      fill_in 'Password', :with => password
      click_button 'Sign in'
    end
  end
end