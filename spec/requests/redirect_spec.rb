require 'rails_helper'

RSpec.describe UrlsController do
  subject { described_class.new }

  describe '#redirect' do
    it 'redirects to the original url' do
      Url.create!(original: 'https://google.com', short_version: 'fgdtee')

      get '/fgdtee'

      expect(response).to redirect_to('https://google.com')
    end
  end
end
