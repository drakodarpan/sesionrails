# Feature: Home Page
#   As a visitor
#   I want to visit a home page
#   So I can Learn more about the website
feature 'Home Page' do

  # Scenario: Visit the Home Page
  #   Give I am a visitor
  #   When I visit the home page
  #   Then I should see "Welcome"
  scenario 'Visit the Home Page' do
    visit root_path
    expect(page).to have_content 'Welcome'
    # expect(page).to have_css '.navbar-brand', 'Home'
    # save_and_open_page
  end  
end
