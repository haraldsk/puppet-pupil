class pupil::service {

  service { 'pupil':
    ensure => running,
    enable => true,
  }
}
