class osbase {

  file { '/etc/hosts':
    ensure  => present,
    source  => 'puppet:///modules/osbase/hosts',
    owner   => 'root',
    group   => 'root',
    mode    => '644',
  }

}
