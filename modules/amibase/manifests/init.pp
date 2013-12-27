class amibase {
  
  file { '/usr/local/sbin/ec2-hostname.sh':
    ensure  => present,  
    source  => 'puppet:///modules/amibase/ec2-hostname.sh',
    owner   => 'root',
    group   => 'root',
    mode    => '755',
  }

}
