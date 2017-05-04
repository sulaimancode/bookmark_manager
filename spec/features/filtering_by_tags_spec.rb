feature 'Filtering by tags' do
  scenario 'I can filter links by tag' do
    add_a_link
    visit '/links/new'
    fill_in :site_name, with: 'Cola'
    fill_in :site_url, with: 'https://www.cola.com/'
    fill_in :site_tag, with: 'bubbles'
    click_button 'Add link'
    visit '/tags/bubbles'
    expect(page).to_not have_content 'Youtube'
    expect(page).to have_content 'Cola'
  end
end
