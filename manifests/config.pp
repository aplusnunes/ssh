class ssh::config(
  $permit_root_login = $::ssh::params::permit_root_login,
) {
  file { '/etc/ssh/sshd_config': 
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    content => template('ssh/sshd_config.erb')
   #source => 'puppet:///modules/ssh/sshd_config'
 }
}
