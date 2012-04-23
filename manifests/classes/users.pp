class users {

 user { 'dave':
      ensure     => absent,
      uid        => '600',
      gid        => 'admin',
      shell      => '/bin/zsh',
      home       => '/home/dave',
      managehome => true,
	}
    }
