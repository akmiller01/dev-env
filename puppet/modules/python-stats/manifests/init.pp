# Install python and compiled modules for project
class python-stats {
    case $operatingsystem {
        ubuntu: {
            package { ["numpy"]:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { ['libfreetype6-dev', 'pkg-config']:
                ensure => installed
            }
            package { 'pandas':
                ensure => installed,
                provider => pip,
                require => Package['numpy']
            }
        }
    }
}
