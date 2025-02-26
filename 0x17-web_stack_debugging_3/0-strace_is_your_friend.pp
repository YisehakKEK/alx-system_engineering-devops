# A Puppet script to fix a WordPress server error by correcting a typo in the wp-settings.php file

exec { 'fix-wordpress-server-error':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin:/bin',
  onlyif  => 'grep -q phpp /var/www/html/wp-settings.php',
}
