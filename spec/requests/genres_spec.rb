require 'rails_helper'

RSpec.describe 'Genres', type: :request do
  describe 'Get /index' do
    it 'returns a 200 status code ' do
      get api_v1_genres_path
      expect(response).to have_http_status(200)
    end
  end
end
