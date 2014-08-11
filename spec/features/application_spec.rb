require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"
  end

  scenario "Can view about page" do
    visit "/"
    expect(page).to have_link "About"
    click_link "About"
    expect(page).to have_content "Not much to say here"
  end
end
