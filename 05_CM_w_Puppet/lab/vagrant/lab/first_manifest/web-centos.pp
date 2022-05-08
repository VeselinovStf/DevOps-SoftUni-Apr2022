package { "httpd": }

service { "httpd":
	ensure => 'running',
	enable => true,
}

file { '/var/www/html/index.html':
  ensure  => 'file',
  content => '<h1>Hello Puppet World!</h1>',
}

