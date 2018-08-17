class ssh::service {
  service{ 'sshd':
   ensure     => running,
   enabled    => true,
   hasstatus  => true,
   hasrestart => true,
 }
}
