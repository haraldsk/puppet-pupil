#
class pupil::install::debian {

  ensure_resource( 'package', 'nodejs', {'ensure' => 'present' } )
  ensure_resource( 'package', 'npm', {'ensure' => 'present' } )
  ensure_resource( 'package', 'git', {'ensure' => 'present' } )

  file { '/etc/init/pupil.conf':
    ensure => present,
    mode   => '0754',
    source => 'puppet:///modules/pupil/pupil-upstart',
    before => Service['pupil']
  }

}
