feature 'Tags the links' do
  scenario 'it can tag the link' do
    visit '/links/new'
    fill_in 'url', with: 'http://www.zombo.com/'
    fill_in 'title', with: 'This is Zombocom'
    fill_in 'tag', with: 'Misc'
    click_button 'Create link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('Misc')
  end
end
