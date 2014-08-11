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

  scenario "Can add gif" do
    visit "/"
    click_link "New gif"
    fill_in 'gif[url]', with: 'http://acidcow.com/pics/20130429/funny_cats_gifs_03.gif'
    fill_in 'gif[title]', with: 'Cat'
    click_button 'Create Gif'
    expect(page).to have_content("Cat")
    expect(page).to have_content("Welcome")
    expect(page).to have_content("gif created successfully")
  end

  scenario "Users can not leave url or title fields blank" do
    visit "/"
    click_link "New gif"
    click_button "Create Gif"
    expect(page).to have_content("Url can't be blank")
    expect(page).to have_content("Title can't be blank")
  end

end


