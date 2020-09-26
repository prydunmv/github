  require 'rails_helper'

RSpec.describe 'user', type: :request do
  describe 'GET /user' do

    let(:user) do
      {
        object: {
          name: 'himser',
          repos: [
            {
              id: 1,
              name: 'viewes'
            }, {
              id: 2,
              name: 'omnono'
            }
          ]
        }
      }
    end

    it 'returns json from github' do
      get '/user'

      expect(response.status).to eq(200)
    end
  end
end
