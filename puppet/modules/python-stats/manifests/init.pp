# Install python and compiled modules for project
class python-stats {
    case $operatingsystem {
        ubuntu: {
            package { ["python-zmq", "python-scipy"]:
                ensure => installed,
                require => Package['python-pip']
            }
            package { ["setuptools"]:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { ["numpy"]:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { ['libfreetype6-dev', 'pkg-config']:
                ensure => installed
            }
            package { ['pyparsing']:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { ["matplotlib"]:
                ensure => installed,
                provider => pip,
                require => [Package['numpy', 'pyparsing', 'libfreetype6-dev']]
            }
            package { 'virtualenv':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'scikit-learn':
                provider => pip,
                require => Package['matplotlib']
            }
            package { 'pandas':
                ensure => installed,
                provider => pip,
                require => Package['numpy']
            }
            package { 'patsy':
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
            package { 'statsmodels':
                ensure => installed,
                provider => pip,
                require => Package['patsy', 'numpy', 'pandas', 'python-scipy']
            }
        }
    }
}
