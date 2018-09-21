class ssh::config {
  file { '/etc/ssh/sshd_config': 
    ensure => file,
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/ssh/sshd_config'
 }
}
