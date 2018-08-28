class ssh::install(
String $package_name = $::ssh::params::package_name,
) {
  package { 'ssh-package':
   name   => $package_name,
   ensure => present,
  }
}
