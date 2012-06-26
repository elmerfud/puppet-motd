class motd {
  if $kernel == "Linux" {
    file { '/etc/motd':
      ensure  => file,
      backup  => false,
      content => template("motd/motd.erb"),
    }
  }
}
