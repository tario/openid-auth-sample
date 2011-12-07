print "*"*60,"\n"

require "openid/store/filesystem"
require "omniauth_patch" # located at lib dir
OmniAuth.config.full_host = "http://localhost:3000"

Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :google, 'domain.com', 'oauth_secret', :scope => 'https://mail.google.com/mail/feed/atom/'
  provider :openid, nil, :name => 'google', :identifier => 'https://www.google.com/accounts/o8/id'
end


