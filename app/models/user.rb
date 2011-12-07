class User < ActiveRecord::Base
  attr_accessible :name, :email
  
  def self.create_with_omniauth(auth)
    user = User.new
    user.name = auth["info"]["first_name"].downcase
    user.email = auth["info"]["email"]
    user.provider = auth["provider"] # google
    user.uid = auth["uid"]
    user.save
    
    user
  end
end
