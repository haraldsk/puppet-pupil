#
class pupil::install::npm {

  include nodejs

  package {
    'node-gyp':
    ensure   => latest,
    provider => 'npm';
  }

  vcsrepo{ '/opt/pupil':
    ensure   => present,
    provider => 'git',
    source   => 'git://github.com/pupil-monitoring/pupil.git',
    revision => $pupil::version,
    require  => Package['git'],
  }

  nodejs::npm{ '/opt/pupil: ':
    subscribe => [ Package['node-gyp'], Vcsrepo['/opt/pupil'] ],
  }

}
