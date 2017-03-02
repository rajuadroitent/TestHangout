class SignUpController < ApplicationController
  def create
    oauth = LinkedIn::OAuth2.new
    url = oauth.auth_code_url
    redirect_to url
  end

  def get_auth_code
    auth_code = params['code']
    oauth = LinkedIn::OAuth2.new
    access_token = oauth.get_access_token(auth_code)
    api = LinkedIn::API.new(access_token)
    linked_in_profile = api.profile(fields:['id', 'first-name', 'last-name', 'location', 'distance', 'num-connections', 'skills', 'educations'])
    @profile = LinkedInAccount.create({linkedin_id:linked_in_profile['id'],first_name:linked_in_profile['first_name'],last_name:linked_in_profile['last_name'],location:linked_in_profile['location']['name']})
    render "sign_up/linkedin_profile.html.erb"
  end
end
