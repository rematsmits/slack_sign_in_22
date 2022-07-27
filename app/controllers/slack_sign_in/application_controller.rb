module SlackSignIn
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    private

    def client
      puts '=======324=234=234=23=423=4=2342=34', callback_url
      @_client ||= SlackSignIn.client.new(
        SlackSignIn.client_id,
        SlackSignIn.client_secret,
        authorize_url: SlackSignIn::AUTHORIZE_URL,
        token_url: SlackSignIn::TOKEN_URL,
        redirect_uri: callback_url,
      )
    end
  end
end
