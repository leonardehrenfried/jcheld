package { ["ruby1.9.1", "ruby1.9.1-dev", "build-essential", "imagemagick",
           "libmagickwand-dev", "sqlite3", "libsqlite3-dev", "libcurl4-openssl-dev",
           "libssl-dev", "apache2-prefork-dev", "libapr1-dev", "libaprutil1-dev",
           "passenger-common1.9.1" ]:
    ensure => "installed"
}

file { "/etc/apache2/sites-enabled/johannes-c-held.de":
  owner  => root,
  group  => root,
  mode   => 550,
  source => "/home/lenni/dev/config/apache2/sites-available/johannes-c-held.de"
}
