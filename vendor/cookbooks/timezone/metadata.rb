maintainer       "Green Alto"
maintainer_email "greg@greenalto.com"
license          "Apache 2.0"
description      "Installs/Configures timezone"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

recipe 'timezone', 'Installs/Configures timezone'

%w(ubuntu debian).each do |os|
  supports os
end
