file { '/etc/config_dir':
  source  => '/home/vagrant/files/config',
  recurse => true,
}
