require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'visit the artists index page' do
    it 'can edit a artist' do
      lizzo = Artist.create(name: 'Lizzo')

      visit '/artists'

      click_link 'Edit'

      expect(current_path).to eq("/artists/#{lizzo.id}/edit")

      fill_in 'Name', with: 'Rihanna'
      click_on 'Update Artist'

      expect(current_path).to eq('/artists')
      expect(page).to have_content('Rihanna')
      expect(page).to_not have_content('Lizzo')
    end
  end
end

