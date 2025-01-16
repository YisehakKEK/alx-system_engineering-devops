# This Puppet manifest installs Flask version 2.1.0 using pip3.

# Ensure that pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Use pip3 to install Flask version 2.1.0
exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  unless  => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"',
  path    => ['/usr/bin', '/usr/local/bin'],
  require => Package['python3-pip'],
}

