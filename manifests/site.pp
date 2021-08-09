node default {
  file {'/root/README':
    ensure    => file,
    content   => 'Fok weet',
    owner     => 'root',
  } 
  file {'/root/README':
  owner     => 'root',
  } 
}


