# Install Poppler
class poppler {
    case $operatingsystem {
        ubuntu: {
            package { 'poppler-utils':
                ensure => installed,
            }
        }
    }
}