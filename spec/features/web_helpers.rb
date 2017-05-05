def add_a_link
  visit '/links/new'
  fill_in :site_name, with: 'Youtube'
  fill_in :site_url, with: 'https://www.youtube.com/'
end

def sign_up
  visit '/users/new'
  fill_in :email, with: 'joe@example.com'
  fill_in :password, with: 'secret'
  click_button 'Sign up'
end
