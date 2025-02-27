# Fixes bad `phpp` extensions to `php` in the WordPress file `wp-settings.php` I believe that's all the problem that was present.

exec { 'fix-wordpress':
  command => 'sed -i "s/phpp/php/g" /var/www/html/wp-settings.php',
  path    => ['/usr/local/bin', '/bin', '/usr/bin'],
  provider => 'shell',
}
