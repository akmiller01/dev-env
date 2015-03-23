class r {

  case $osfamily {
    'Debian': {
      package {"r-base": ensure => latest}
    }
    'RedHat': {
      package {"R-core": ensure => latest}
    }
    default: { fail("Not supported on osfamily $osfamily") }
  }

}

