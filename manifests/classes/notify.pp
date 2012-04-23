class notify{
notify { "This message is getting logged on the agent node.": }
notify { "warning":
message => $operatingsystem ? { 'SLES' => "This seems to be a SLES machine",
default => "And I’m a PC.",},
}
}
