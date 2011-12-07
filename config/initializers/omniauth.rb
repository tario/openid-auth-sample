print "*"*60,"\n"

require "openid/store/filesystem"
require "omniauth_patch" # located at lib dir
OmniAuth.config.full_host = "http://warm-moon-7086.heroku.com/"

#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :google, 'domain.com', 'oauth_secret', :scope => 'https://mail.google.com/mail/feed/atom/'
#  provider :openid, nil, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
#end


Rails.application.config.middleware.use OmniAuth::Builder do
  provider :open_id, nil
end
# you will be able to access the above providers by the following url
# /auth/providername for example /auth/twitter /auth/facebook

Rails.application.config.middleware do
  use OmniAuth::Strategies::OpenID, nil, :name => "google", :identifier => "https://www.google.com/accounts/o8/id"
end


