group { 'devs':
  ensure => present,
  gid    => 3000,
}

user { 'trainee':
  ensure => present,
  uid    => '3002',
  home   => '/home/trainee',
  shell  => '/bin/bash',
  groups => ['devs'],
}
