# Install python and compiled modules for project
class python-stats {
    case $operatingsystem {
        ubuntu: {
            package { ["numpy"]:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { ['libfreetype6-dev', 'pkg-config','python-lxml']:
                ensure => installed
            }
            package { ['pyPdf']:
                ensure => installed,
                provider => pip,
                require => Package['numpy']
            }
            package { ['scraperwiki']:
                ensure => installed,
                provider => pip,
                require => Package['numpy']
            }
            package { 'pandas':
                ensure => installed,
                provider => pip,
                require => Package['numpy']
            }
        }
    }
}
