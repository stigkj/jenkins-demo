
class demojobs {
  $jobs_root = '/var/lib/jenkins/jobs'

  file {
    "${jobs_root}" :
      owner  => jenkins,
      group  => nogroup,
      ensure => directory;
  }

  define demojob() {
    file {
      "${demojobs::jobs_root}/${name}" :
        owner   => jenkins,
        group   => nogroup,
        ensure  => directory,
        require => [
                    Class['jenkins::package'],
                    File["${demojobs::jobs_root}"],
        ];

      "${demojobs::jobs_root}/${name}/config.xml" :
        owner  => jenkins,
        group  => nogroup,
        ensure => present,
        require => File["${demojobs::jobs_root}/${name}"],
        source => "puppet:///modules/demojobs/${name}-config.xml";
    }
  }


  demojob {
    'simple-failure' : ;
    'simple-promoted' : ;
    'every-five-minutes' : ;
    'ruby-gem-from-git' : ;
  }
}
