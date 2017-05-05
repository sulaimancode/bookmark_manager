feature 'Adding user accounts' do
  scenario 'I am showed a welcome message after I sign up' do
    sign_up
    expect(page).to have_content('Welcome, joe@example.com')
  end

  scenario 'user count changes by +1 after signing up' do
    expect { sign_up }.to change(User, :count).by(1)
  end
end
