require 'rails_helper'

RSpec.describe 'as a visitor', type: :feature do
  describe 'and i visit the artist index page' do
    it 'can delete a user' do
      taytay = Artist.create(name: 'Taylor Swift')

      visit '/artists'

      click_button 'Delete'

      expect(current_path).to eq('/artists')
      expect(page).to_not have_content('Taylor Swift')
    end
  end

end
