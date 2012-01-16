
node default {
  group {
    'puppet' :
      ensure => present;
  }

  package {
    'git-core' :
      ensure => present;
    'ruby1.9' :
      ensure => present;
    'rubygems1.9' :
      ensure => present;
    'rcov' :
      ensure => present;
    'rake' :
      ensure => present;
  }

  class {
    'jenkins' :
      require => Package['git-core'];
    'demojobs': ;
  }

  jenkins::plugin {
    # Source Control
    'git' : ;

    # Workflow
    'promoted-builds' : ;
    'claim' : ;
    'scriptler' : ;
    'managed-scripts' : ;

    # Running jobs
    'join' : ;
    'pathignore' : ;
    'cobertura' : ;
    'build-timeout' : ;
    'warnings' : ;
    'violations' : ;

    # Just for fun
    'beer' : ;

    # Display plugins
    'ansicolor' : ;
    'radiatorviewplugin' : ;
    'xfpanel' : ;
    'statusmonitor' : ;
  }
}
