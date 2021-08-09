node default {
  file {'/root/README':
    ensure => file,
    content => 'Fok weet',
  }
}
