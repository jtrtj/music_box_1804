require 'rails_helper'

describe 'user index' do

  it 'user can see all songs' do
    song_1 = Song.create(title: "Don't Stop Believin'", length: 303, play_count: 123456)
    song_2 = Song.create(title: "Do Stop Believin'", length: 202, play_count: 654321)

    visit '/songs'

    expect(page).to have_content('All Songs')
    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Plays: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Plays: #{song_2.play_count}")
  end
end