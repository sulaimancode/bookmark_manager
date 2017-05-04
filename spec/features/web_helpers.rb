def add_a_link
  visit '/links/new'
  fill_in :site_name, with: 'Youtube'
  fill_in :site_url, with: 'https://www.youtube.com/'
end
