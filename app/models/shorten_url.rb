class ShortenUrl < ApplicationRecord
  validates_presence_of :original_url

  def generate_short_url
    self.short_url = "http://" + SecureRandom.uuid[0..5] if self.short_url.nil?
  end


end
