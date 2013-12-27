class osbase::puppetagent {
  include ::osbase

  file { '/etc/sysconfig/puppet':
    ensure  => present,
    source  => 'puppet:///modules/osbase/sysconfigpuppet',
    owner   => 'root',
    group   => 'root',
    mode    => '644',
  }


}
