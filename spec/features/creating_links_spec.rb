feature 'Creating links' do
  scenario "I can add a site's name and address to my bookmark_manager" do
    add_a_link
    click_button 'Add link'
    visit '/links'
    expect(page).to have_content 'Youtube'
  end
end
