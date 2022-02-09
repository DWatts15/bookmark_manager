require 'pg'

# feature 'Viewing bookmarks' do
#   scenario 'A user can see bookmarks' do
#     visit('/bookmarks')

#     expect(page).to have_content "http://www.makersacademy.com"
#     expect(page).to have_content "http://www.destroyallsoftware.com"
#     expect(page).to have_content "http://www.google.com"
#   end
# end

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    # connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    # connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    # connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers Academy')
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: 'Destroy All Software')
    Bookmark.create(url: "http://www.google.com", title: 'Google')

    visit('/bookmarks')

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy All Software',  href: 'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end