if $facts['os']['family'] == 'RedHat' {
  $vpackage = 'httpd'
}
else {
  $vpackage = 'apache2'
}

package { $vpackage: }

service { $vpackage:
  ensure => running,
  enable => true,
}

file {'/var/www/html/index.html':
  ensure  => 'file',
  content => "<h1>Hello Puppet World!</h1><br /><hr /><h5>Running on ${facts['os']['family']}</h5>",
}


