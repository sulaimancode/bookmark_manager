def add_a_link
  visit '/links/new'
  fill_in :site_name, with: 'Youtube'
  fill_in :site_url, with: 'https://www.youtube.com/'
end

def sign_up(email: 'joe@example.com',
            password: 'secret',
            password_confirmation: 'secret')
  visit '/users/new'
  fill_in :email, with: email
  fill_in :password, with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Sign up'
end
