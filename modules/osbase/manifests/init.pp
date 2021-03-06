class osbase {

  file { '/etc/hosts':
    ensure  => present,
    source  => 'puppet:///modules/osbase/hosts',
    owner   => 'root',
    group   => 'root',
    mode    => '644',
  }

  file { '/root/.bash_profile':
    ensure  => present,
    source  => 'puppet:///modules/osbase/bash_profile',
    owner   => 'root',
    group   => 'root',
    mode    => '644',
  }

  file { '/home/ec2-user/.bash_profile':
    ensure  => present,
    source  => 'puppet:///modules/osbase/bash_profile',
    owner   => 'ec2-user',
    group   => 'ec2-user',
    mode    => '644',
  }

}
