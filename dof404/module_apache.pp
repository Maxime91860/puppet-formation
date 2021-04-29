include apache

apache::vhost { 'cat-pictures.com':
  port          => '80',
  docroot       => '/var/www/cat-pictures',
  docroot_owner => 'www-data',
  docroot_group => 'www-data',
}

file { '/var/www/cat-pictures/index.html':
  content => "<img src='https://3.bp.blogspot.com/-w1McqyQflFM/VUEsrgAphKI/AAAAAAAAAdY/lbMsugNdGto/s1600/why-do-cats-purr-happycat.jpg'>",
  owner   => 'www-data',
  group   => 'www-data',
}
