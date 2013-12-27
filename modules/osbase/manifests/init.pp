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

  file { '/ec2-user/.bash_profile':
    ensure  => present,
    source  => 'puppet:///modules/osbase/bash_profile',
    owner   => 'root',
    group   => 'root',
    mode    => '644',
  }

}
