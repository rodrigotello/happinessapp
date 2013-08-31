class Authentication < ActiveRecord::Base
  attr_accessible :provider, :uid, :oauth_token
  belongs_to_ninsho :user
  # attr_accessible :title, :body
end
