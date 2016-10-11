require './app'
require 'spec_helper'

feature "Player names input" do

	scenario 'expects players to fill in their names, submit that form and see those names on screen' do
		visit('/')
		fill_in :player1, with: 'Asif'
		fill_in :player2, with: 'Li'
		click_button('Submit')
		expect(page).to have_content("Asif vs Li")
	end

end