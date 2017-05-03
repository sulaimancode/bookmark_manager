feature 'Creating links' do
  scenario "I can add a site's name and address to my bookmark_manager" do
    visit '/links/new'
    fill_in :site_name, with: 'Youtube'
    fill_in :site_url, with: 'https://www.youtube.com/'
    click_button 'Add link'
    visit '/links'
    expect(page).to have_content 'Youtube'
  end

  scenario 'I can add a tag to the link' do
    visit '/links/new'
    fill_in :site_name, with: 'Youtube'
    fill_in :site_url, with: 'https://www.youtube.com/'
    fill_in :site_tag, with: 'videos'
    click_button 'Add link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('videos')
  end
end
