require "sense/client/version"
require "oauth2"

module Sense
  class Client
    CLIENT_ID = '8d3c1664-05ae-47e4-bcdb-477489590aa4'
    CLIENT_SECRET = '4f771f6f-5c10-4104-bbc6-3333f5b11bf9'

    SITE_URL = 'https://api.hello.is/'
    TOKEN_URL = '/v1/oauth2/token'

    def initialize
      @client = ::OAuth2::Client.new(CLIENT_ID, CLIENT_SECRET, site: SITE_URL, token_url: TOKEN_URL)
    end

    def login(username, password)
      @token = @client.password.get_token(username, password)
    end

    def room
      response = @token.get '/v1/room/current'
      response.parsed
    end

    def timeline(date = Date.today - 1)
      response = @token.get "/v2/timeline/#{date.strftime('%F')}"
      response.parsed
    end
  end
end
