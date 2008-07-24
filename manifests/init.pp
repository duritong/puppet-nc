# manage nc
# Copyright (C) 2008 admin@immerda.ch
# GPLv3
# 

class nc {
    case $operatingsystem {
        debian: { include nc::debian }
        default: { include nc::base }
    }
}

class nc::base {
    package { 'nc':
        ensure => present,
    }
}

class nc::debian inherits nc::base {
    Package['nc']{
        name => 'netcat',
    }
}
