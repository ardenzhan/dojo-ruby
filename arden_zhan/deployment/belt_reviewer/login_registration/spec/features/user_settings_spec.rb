require 'rails_helper'
feature 'User Settings features ' do
  before do
    @user = create(:user)
    log_in
  end
  feature "User Settings Dashboard" do
    before(:each) do 
      visit "/users/#{@user.id}/edit"
    end
    scenario "visit users edit page" do
      expect(page).to have_field('email')
      expect(page).to have_field('first_name')
      expect(page).to have_field('last_name')
      expect(page).to have_field('city')
      expect(page).to have_field('state')
    end
    scenario "inputs filled out correctly" do 
      expect(find_field('first_name').value).to eq(@user.first_name)
      expect(find_field('last_name').value).to eq(@user.last_name)
      expect(find_field('email').value).to eq(@user.email) 
      expect(find_field('city').value).to eq(@user.city)
      expect(find_field('state').value).to eq(@user.state)     
    end    
    scenario "incorrectly updates information" do
      fill_in 'first_name', with: 'Another First Name' 
      fill_in 'last_name', with: 'Another Last Name'     
      fill_in 'email', with: 'incorrect email format'
      fill_in 'city', with: 'Another City'
      fill_in 'state', with: 'ST'
      click_button 'Update'
      expect(current_path).to eq("/users/#{@user.id}/edit")
      expect(page).to have_text("Email is invalid")      
    end    
    scenario "correctly updates information" do 
      fill_in 'first_name', with: 'Another First Name'
      fill_in 'last_name', with: 'Another Last Name'
      fill_in 'email', with: 'correct@email.com'
      fill_in 'city', with: 'Another City'
      fill_in 'state', with: 'ST'
      click_button 'Update'
      expect(page).to have_text('Another First Name')
    end
    scenario "destroys user and redirects to registration page" do
      click_button 'Delete Account'
      expect(current_path).to eq('/users/new')
      # Make sure that you're clearing session on destroy
    end
  end
end