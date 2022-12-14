require 'rails_helper'

RSpec.describe 'user_index', type: :feature do
  before(:each) do
    @user = User.first
    visit users_path
  end

  it 'shows the username of the users' do
    expect(page).to have_content('Tom')
  end

  it 'shows the photos of the users' do
    expect(page.html).to include('avatal')
  end

  it 'shows the number of post of each user' do
    expect(page).to have_content("Number of Posts: #{@user.posts_counter}")
  end

  it 'should redirect to user show page when a name is clicked' do
    first(:link, @user.name).click
    expect(page.current_path).to eql(user_path(id: @user.id))
  end
end
