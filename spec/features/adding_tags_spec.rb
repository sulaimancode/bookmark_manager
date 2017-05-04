feature 'Adding tags' do
  scenario 'I can add a tag to a link' do
    add_a_link
    fill_in :site_tag, with: 'videos'
    click_button 'Add link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('videos')
  end

  scenario 'I can add multiple tags' do
    add_a_link
    fill_in :site_tag, with: 'videos fun'
    click_button 'Add link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('videos', 'fun')
  end
end
