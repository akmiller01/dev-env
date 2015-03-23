class gdal (
  $gdal_version          = present,
  $ubuntugis             = undef
) {
    case $operatingsystem {
        ubuntu: {
            if $ubuntugis {
                include apt
                $ppa_location = $ubuntugis ? {
                'stable'   => 'http://ppa.launchpad.net/ubuntugis/ppa/ubuntu',
                'unstable' => 'http://ppa.launchpad.net/ubuntugis/ubuntugis-unstable/ubuntu',
                default    => $ubuntugis
                }
    
                ::apt::source { 'ubuntugis-ppa' :
                    location   => $ppa_location,
                    repos      => 'main',
                    key        => '314DF160',
                    key_server => 'keyserver.ubuntu.com',
                    before     => Package['gdal-bin'],
                }
            }
            package {'gdal-bin':
              ensure => $gdal_version,
            }
            package {'python-gdal':
              ensure => $gdal_version,
            }
        }
    }
}
