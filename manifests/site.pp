import "classes/users.pp"
node default {
#include ntp
include users
}
node win {
	file {'C:/warning.txt':
    ensure  => present,
    content => "my_module/warning.erb",
  }

	user { "mahesh":
	ensure     => present,
	home => 'C:\Documents and Settings\mahesh',
	}

	}
