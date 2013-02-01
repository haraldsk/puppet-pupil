#
class pupil::install {

  if $pupil::npm == true {
    include pupil::install::npm
  }

  case $::osfamily {
    'Debian': {
      include pupil::install::debian
    } 'RedHat' {
      notify{'EL5 is said to work, but not tested': }
      include pupil::install::debian
    } default: {
      fail("${::osfamily} not supported")
    }
  }


}
