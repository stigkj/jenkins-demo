
node default {
  group {
    'puppet' :
      ensure => present;
  }


  class {
    'jenkins' : ;
  }

  jenkins::plugin {
    'git' : ;
    'beer' : ;
    'promoted-builds' : ;
    'join' : ;
    'pathignore' : ;
    'cobertura' : ;
    'claim' : ;
    'build-timeout' : ;
    'ansicolor' : ;
  }
}
