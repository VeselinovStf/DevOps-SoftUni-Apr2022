puppet module install puppetlabs/mysql
sudo cp -vR ~/.puppetlabs/etc/code/modules/ /etc/puppetlabs/code/

$packages = [ 'httpd', 'php', 'php-mysqlnd' ]

package { $packages: }

service { httpd:
  ensure => running,
  enable => true,
}


export BOLT_PROJECT='/vagrant/lab/boltdemo'
