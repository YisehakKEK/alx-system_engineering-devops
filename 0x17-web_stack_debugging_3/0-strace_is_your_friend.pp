# This Puppet manifest ensures WordPress is running correctly on a LAMP stack
exec { 'fix-wordpress-permissions':
  command => 'chown -R www-data:www-data /var/www/html',
  onlyif  => 'test -d /var/www/html',
}

service { 'apache2':
  ensure  => running,
  enable  => true,
}

service { 'mysql':
  ensure  => running,
  enable  => true,
}

