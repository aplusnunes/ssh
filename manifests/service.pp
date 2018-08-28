class ssh::service(
 String $service_name = $::ssh::params::service_name,
) {
  service{ 'sshd-service':
   ensure     => running,
   name       => $service_name,
   enable     => true,
   hasstatus  => true,
   hasrestart => true,
 }
}
