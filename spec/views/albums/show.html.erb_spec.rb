require 'rails_helper'

RSpec.describe "albums/show", :type => :view do
  before(:each) do
    @album = assign(:album, Album.create!(
      :title => "Title",
      :genre => "rock"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/rock/)
  end
end
