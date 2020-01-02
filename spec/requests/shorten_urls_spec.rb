require 'rails_helper'

RSpec.describe "ShortenUrls", type: :request do
  describe "GET /shorten_urls" do
    it "works! (now write some real specs)" do
      get shorten_urls_path
      expect(response).to have_http_status(200)
    end
  end
end
