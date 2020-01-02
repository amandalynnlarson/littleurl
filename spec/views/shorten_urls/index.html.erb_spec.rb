require 'rails_helper'

RSpec.describe "shorten_urls/index", type: :view do
  before(:each) do
    assign(:shorten_urls, [
      ShortenUrl.create!(
        :original_url => "MyText",
        :short_url => "Short Url"
      ),
      ShortenUrl.create!(
        :original_url => "MyText",
        :short_url => "Short Url"
      )
    ])
  end

  it "renders a list of shorten_urls" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Short Url".to_s, :count => 2
  end
end
