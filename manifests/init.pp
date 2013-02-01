# == Class: pupil
#
# === Authors
#
#  Harald Skoglund <haraldsk@redpill-linpro.com>
#
# === Copyright
#
# Copyright 2013 Harald Skoglund, unless otherwise noted.
#
class pupil (
  $npm     = true,
  $version = 'master',
) {

  include install, configure, service

}
