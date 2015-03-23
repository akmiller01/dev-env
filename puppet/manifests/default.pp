Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

#include apache
include system-update
include git
class { 'python':
  version => 'system',
  virtualenv => true,
  pip => true,
  dev => true
}
include python-stats
class { 'nodejs':
  version => 'stable',
}
class { 'r': }
class { 'gdal': }