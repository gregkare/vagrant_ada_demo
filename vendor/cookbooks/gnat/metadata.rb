maintainer       "Green Alto"
maintainer_email "contact@greenalto.com"
license          "All rights reserved"
description      "Installs/Configures gnat"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"
%w(build-essential git).each do |package|
  depends package
end

%w(ubuntu debian).each do |os|
  supports os
end
