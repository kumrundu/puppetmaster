class ntp {
        case $operatingsystem {
        SLES: { $provid = "zypper"}
        Ubuntu: { $provid = "apt-get"}
	default: { fail("Sorry dude!!! Unknown OS. ")}
        }
        package { "ntp":
        provider => $provid,
	ensure  => installed,
        }
        service { "ntp":
        ensure  => running,
        }
}        
