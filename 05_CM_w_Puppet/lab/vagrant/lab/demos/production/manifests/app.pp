$packages = [ 'httpd', 'php', 'php-mysqlnd' ]

package { $packages: }

service { httpd:
  ensure => running,
  enable => true,
}

file { '/var/www/html/index.php':
  ensure => present,
  source => "https://zahariev.pro/files/app/index.php.txt",
}

file { '/tmp/db.sql':
  ensure => present,
  source => "https://zahariev.pro/files/app/db.sql",
}

class { '::mysql::server':
  root_password           => '12345',
  remove_default_accounts => true,
  restart                 => true,
  override_options => {
    mysqld => { bind-address => '0.0.0.0'}
  },
}

mysql::db { 'sentences':
  user        => 'root',
  password    => '12345',
  dbname      => 'sentences',
  host        => '%',
  sql         => '/tmp/db.sql',
  enforce_sql => true,
}