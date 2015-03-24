# Install NodeJS and NPM
class nodejs {
    case $operatingsystem {
        ubuntu: {
            package { 'nodejs':
                ensure => installed,
            }
            package { 'npm':
                ensure => installed,
            }
        }
    }
}