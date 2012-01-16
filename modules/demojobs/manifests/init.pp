
class demojobs {
  $jobs_root = '/var/lib/jenkins/jobs'

  file {
    "${jobs_root}/simple-failure" :
      owner  => jenkins,
      group  => nogroup,
      ensure => directory;

    "${jobs_root}/simple-failure/config.xml" :
      ensure => present,
      owner  => jenkins,
      group  => nogroup,
      source => 'puppet:///modules/demojobs/simple-failure-config.xml';


    "${jobs_root}/simple-promoted" :
      owner  => jenkins,
      group  => nogroup,
      ensure => directory;

    "${jobs_root}/simple-promoted/config.xml" :
      ensure => present,
      owner  => jenkins,
      group  => nogroup,
      source => 'puppet:///modules/demojobs/simple-promoted-config.xml';
  }
}
