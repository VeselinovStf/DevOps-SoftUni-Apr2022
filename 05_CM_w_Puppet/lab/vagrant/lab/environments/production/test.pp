file {'/var/test.txt':
  ensure  => 'file',
  content => "<h1>Hello Puppet World!</h1><br /><hr /><h5>Running on ${facts['os']['family']}</h5>",
}

