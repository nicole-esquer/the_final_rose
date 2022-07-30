require 'rails_helper'

RSpec.describe 'contestants show page' do
   it 'has a show page' do
      bach_1 = Bachelorette.create!(name: "Bachelorette 1", season_number: "2nd")

      contestant_1 = Contestant.create!(name: "Contestant 1", age: "30", hometown: "Boston", bachelorette_id: bach_1.id)
      outing = Outing.create!(name: "bowling", location: "boston", date: "01/08/20")

      ContestantOuting.create!(contestant_id: contestant_1.id, outing_id: outing.id)

 
     visit contestant_path(contestant_1.id)

      expect(page).to have_content("Contestant Show Page")
   end

   it "has a form to add an outing to schedule" do
      bach_1 = Bachelorette.create!(name: "Bachelorette 1", season_number: "2nd")

      contestant_1 = Contestant.create!(name: "Contestant 1", age: "30", hometown: "Boston", bachelorette_id: bach_1.id)
      outing = Outing.create!(name: "bowling", location: "boston", date: "01/08/20")

     visit contestant_path(contestant_1.id)

      fill_in :id, with:("#{outing.id}")

      click_on "Create Outing"

      expect(current_path).to eq(contestant_path(contestant_1.id))
      expect(page).to have_content(outing.name)
   end
end