require "spec_helper"

describe "index view" do
  it "takes original url as argument" do
    assign(:original_url, build(original_url: 'www.google.com'))
    render
    expect(rendered).to have_link 'ShortenUrl', href: 'http://google.com/'
  end
end
