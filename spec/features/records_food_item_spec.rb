require 'spec_helper'

feature "Records a food item", %q{
  As a food service employee
  I want to receive inventory
  So that it can be recorded that we have food items
  } do

  # Acceptance Criteria:
  #
  # I must specify a title, description, and quantity of the food item
  # If I do not specify the required information, I am prompted to fix errors and to resubmit
  # If I specify the required information, my inventory entry is recorded.

  context 'with correct information' do
    it 'creates an entry' do
      visit new_entry_path

      fill_in "Title", with: "Sushi"
      fill_in "Description", with: "Lots and lots of barbecue eel"
      fill_in "Quantity", with: "1 barrel"
      click_on "Create Entry"

      expect(page).to have_content "Entry was successfully created"
    end
  end

  context 'with incomplete information' do
    it 'sends error and redirects to form' do
      visit new_entry_path

      click_on "Create Entry"

      expect(page).to have_content "3 errors prevented this from being saved"
    end
  end
end
