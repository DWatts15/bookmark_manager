feature 'home page' do
  scenario 'displays a hello, world message as a test' do
    visit '/'
    expect(page).to have_content('Hello, world!')
  end
end
