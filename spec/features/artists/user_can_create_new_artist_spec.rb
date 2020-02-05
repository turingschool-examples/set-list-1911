require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'when I visit the new artist form by clicking on the link in the index' do
    it 'can create a new artist' do
      visit '/artists'

      click_link 'New Artist'

      expect(current_path).to eq('/artists/new')

      fill_in 'Name', with: 'Meg'
      click_on 'Create Artist'

      expect(current_path).to eq('/artists')
      expect(page).to have_content('Meg')
    end

    it 'cannot create an artist without a name' do
      visit '/artists/new'

      click_on 'Create Artist'

      expect(page).to have_content('Artist not created: Required info missing')
      expect(page).to have_button('Create Artist')
    end
  end
end
