class ssh {
        if $osfamily == 'RedHat'
 	    {
            $pack1='openssh' 
            }
            else
            {
            $pack1='ssh'
            }
     package { 'openssh':
                name => $pack1, 
                ensure => present,
             }
     file { '/etc/ssh/sshd_config':
            source => 'puppet:///modules/ssh/sshd_config',
          }
     service { 'sshd':
               ensure => running,
	       subscribe => File['/etc/ssh/sshd_config'],
             }
}            
