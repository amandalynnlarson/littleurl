require 'rails_helper'

RSpec.describe "shorten_urls/new", type: :view do
  before(:each) do
    assign(:shorten_url, ShortenUrl.new(
      :original_url => "MyText",
      :short_url => "MyString"
    ))
  end

  it "renders new shorten_url form" do
    render

    assert_select "form[action=?][method=?]", shorten_urls_path, "post" do

      assert_select "textarea#shorten_url_original_url[name=?]", "shorten_url[original_url]"

    end
  end
end
