feature 'viewing bookmarks' do
  scenario 'requesting a list of saved bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("Bookmark 1, Bookmark 2")
  end
end