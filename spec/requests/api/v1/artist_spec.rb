require 'rails_helper'

describe 'GET /api/v1/artists', type: :request do
  it 'returns a list of all artists in the database' do
    artists = FactoryBot.create_list(:artist, 3)

    get api_artists_path

    expect(JSON.parse(response.body).size).to eq artists.size
  end
end

describe 'GET /api/v1/artists/:artist_id', type: :request do
  context 'for a valid artist' do
    it 'returns the artist information' do
      artist = FactoryBot.create(:artist)

      get api_artist_path(artist)
      parsed_body = JSON.parse(response.body).deep_symbolize_keys

      expect(parsed_body[:id]).to eq artist.id
      expect(parsed_body[:name]).to eq artist.name
    end
  end

  context 'for an artist that does not exist' do
    it 'throws not found error' do
      FactoryBot.create(:artist)

      get api_artist_path('nonsense-id')

      expect(response.status).to be 404
    end
  end
end

describe 'POST /api/v1/artists/', type: :request do
  context 'for a valid artist' do
    it 'creates the artist' do
      params = { artist: { name: 'Michael Jackson' } }
      post api_artists_path, params: params

      parsed_body = JSON.parse(response.body).deep_symbolize_keys

      expect(parsed_body[:name]).to eq 'Michael Jackson'
    end
  end

  context 'for invalid artist' do
    it 'throws a not found error' do
      artist = FactoryBot.create(:artist)

      params = { artist: { name: artist.name } }
      post api_artists_path, params: params

      expect(response.status).to eq 400
    end
  end

  context 'for invalid params' do
    it 'throws an bad request error' do

      params = { artist: { nonsense_params: "nonsense_value" } }
      post api_artists_path, params: params

      expect(response.status).to eq 400
    end
  end
end

describe 'PATCH /api/v1/artists/', type: :request do
  context 'for a valid artist' do
    it 'creates the artist' do
      artist = FactoryBot.create(:artist)

      params = { artist: { name: 'Michael Jackson' } }
      patch api_artist_path(artist), params: params

      parsed_body = JSON.parse(response.body).deep_symbolize_keys

      expect(parsed_body[:name]).to eq 'Michael Jackson'
    end
  end

  context 'for invalid artist' do
    it 'throws a not found error' do
      artist = FactoryBot.create(:artist)

      params = { artist: { name: artist.name } }
      patch api_artist_path('artist'), params: params

      expect(response.status).to eq 404
    end
  end
end

describe 'DELETE /api/v1/artists/', type: :request do
  context 'for an artist that exists' do
    it 'deletes the artist' do
      artist = FactoryBot.create(:artist)

      delete api_artist_path(artist)

      expect(response.status).to eq 204
    end
  end

  context 'for an artist that does not exist' do
    it 'does not delete the artist' do
      delete api_artist_path('fake-artist')

      expect(response.status).to eq 404
    end
  end
end
