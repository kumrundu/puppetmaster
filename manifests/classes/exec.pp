class exec {
	
	Exec { path => '/usr/bin:/bin:/usr/sbin:/sbin' }
	exec { 'mkdir /demo': }
	exec {'touch /demo/1 /demo/2 /demo3':}
	exec { 'echo "Files and folder created"':}

}
