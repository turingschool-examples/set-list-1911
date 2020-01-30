require 'rails_helper'

RSpec.describe 'as a visitor', type: :feature do
  describe 'visits the index page' do
    it 'sees all of the artists' do
      artist_1 = Artist.create(name: 'Carly Rae Jepsen')
      artist_2 = Artist.create(name: 'Taylor Swift')

      visit '/artists'

      expect(page).to have_content(artist_1.name)
      expect(page).to have_content(artist_2.name)
    end
  end
end
