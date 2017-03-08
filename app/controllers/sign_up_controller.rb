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
    linked_in_profile = api.profile(fields:['id', 'first-name', 'last-name',
                                            'location', 'distance', 'num-connections',
                                            'picture-url', 'educations', 'date-of-birth',
                                            'languages','public-profile-url','email-address',
                                            'headline','industry','summary','positions'
                                      ])
    puts linked_in_profile
    @profile = LinkedInAccount.create({linkedin_id:linked_in_profile['id'],
                                       first_name:linked_in_profile['first_name'],
                                       last_name:linked_in_profile['last_name'],
                                       location:linked_in_profile['location']['name'],
                                       num_connections: linked_in_profile['num_connections'],
                                       headline: linked_in_profile['headline'],
                                       industry: linked_in_profile['industry'],
                                       summary: linked_in_profile['summary'],
                                       picture_url: linked_in_profile['picture_url'],
                                       distance: linked_in_profile['distance'],
                                       public_profile_url: linked_in_profile['public_profile_url']
                                      })
    render "sign_up/linkedin_profile.html.erb"
  end
end
