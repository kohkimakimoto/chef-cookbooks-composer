#
# Composer
#

#
# Globally install
#
script "composer_install_script" do
  interpreter "bash"
  user "root"
  cwd "/root"
  code <<-EOH

    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer

  EOH

  not_if "test -e /usr/local/bin/composer"
end
