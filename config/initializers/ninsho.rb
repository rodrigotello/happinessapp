# This hook is use to setup the configuration for creating models through
# rails generators
Ninsho.setup do |config|
  
  # ==> ORM Configuration
  # Load and configure the ORM. Supports :active_record
  require 'ninsho/orm/active_record'


  #Omniauth Providers
	if Rails.env == "development" || Rails.env == "test"
  		config.omniauth :facebook, "1408192656070863", "d6de7f2bfa44c7ca2ce1c29f6e142f39", :scope => 'email'
	  else
		config.omniauth :facebook, "156907174517059", "32093ec4ca7161a28c6b9bdb0be36aa1", :scope => 'email'
	end

end
