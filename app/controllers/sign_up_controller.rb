class SignUpController < ApplicationController
  def create
    oauth = LinkedIn::OAuth2.new
    url = oauth.auth_code_url
    redirect_to url
  end

  def get_auth_code
    auth_code = params['code']
    puts auth_code
    oauth = LinkedIn::OAuth2.new
    access_token = oauth.get_access_token(auth_code)
    api = LinkedIn::API.new(access_token)
    render json: {"profile":api.profile}
  end
end
