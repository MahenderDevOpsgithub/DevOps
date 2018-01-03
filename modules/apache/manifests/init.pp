class apache {
      package { "httpd":
  		 ensure => present,
	         before => service['httpd'],
              }
      file { '/var/www/html/index.html':
              source => 'puppet:///modules/apache/index.html',
	      notify => service['httpd'],
           }
      service { 'httpd':
                 ensure => running,
	         require => Package['httpd'],
              }
}
