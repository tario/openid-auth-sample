#print "*"*60,"\n"

require "omniauth_patch" # located at lib dir

ActionController::Dispatcher.middleware.use OmniAuth::Builder do
  provider :open_id, nil
end
# you will be able to access the above providers by the following url
# /auth/providername for example /auth/twitter /auth/facebook

ActionController::Dispatcher.middleware do
  use OmniAuth::Strategies::OpenID, nil, :name => "google", :identifier => "https://www.google.com/accounts/o8/id"
  #use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => "yahoo", :identifier => "https://me.yahoo.com"
  #use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => "aol", :identifier => "https://openid.aol.com"
  #use OmniAuth::Strategies::OpenID, OpenID::Store::Filesystem.new('/tmp'), :name => "myspace", :identifier => "http://myspace.com"
end
