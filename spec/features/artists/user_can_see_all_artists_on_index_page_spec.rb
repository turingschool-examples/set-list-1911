require 'rails_helper'

RSpec.describe 'as a visitor', type: :feature do
  describe 'visits the index page' do
    it 'sees all of the artists' do
      artist_1 = Artist.create(name: 'Carly Rae Jepsen')
      artist_2 = Artist.create(name: 'Taylor Swift')

      visit '/artists'

      within "#artist-#{artist_1.id}" do
        expect(page).to have_content(artist_1.name)
        expect(page).to have_link("Edit")
        expect(page).to have_button("Delete")
      end

      within "#artist-#{artist_2.id}" do
        expect(page).to have_content(artist_2.name)
        expect(page).to have_link("Edit")
        click_button("Delete")
      end

      expect(current_path).to eq("/artists")
      expect(page).to_not have_content(artist_2.name)

    end
  end
end
