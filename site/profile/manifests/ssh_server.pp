class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDMZ/sTWqbvya/7GwxX9fFR0PW2VIPUQgMFcztjT3A/j7XM5DBZPUV7t8sFiT0Z9gcv3ZvbOP4693RxSrCFN+t+Jr6gwU69F0fzjGvtfZI3jarot4oHHIf++4AZTPcR/AfEsGhBb/g/P9SyIrvVa+DUEChEftHgyqT0YPIpPtLh2YMOAfwx/vgatZqDwMVht576+/jFHnmdNUB1mBV1feHpzaZfNhA02pusD2zv/J2y/zOFLWSPFAqsBn3fqf1l0eD3XzZLe34dY+anI48OyUEaWZp3B+x6V40u4hXiS/qY3biRJ0NkatiH242OElSlCsrlfL8aHTy4IfBQ8nhezj+t',
  }  
}
