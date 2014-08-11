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

  scenario "Can view new gif page" do
    visit "/"
    expect(page).to have_link "New gif"
    click_link "New gif"
    expect(page).to have_content "New gif"
    expect(page).to have_content "Url"
    expect(page).to have_content "Title"
  end
end
