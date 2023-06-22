# 0-strace_is_your_friend.pp

package { 'apache2':
  ensure => installed,
}

service { 'apache2':
  ensure => running,
  enable => true,
  require => Package['apache2'],
}

file { '/etc/apache2/apache2.conf':
  ensure  => file,
  content => '# Updated Apache configuration content',
  require => Package['apache2'],
  notify  => Service['apache2'],
}

