God.watch do |w|
  w.name = 'postfix'
  w.group = 'email'
  w.autostart = false
  
  w.start    = "/etc/init.d/postfix start" 
  w.stop     = "/etc/init.d/postfix stop"
  w.restart  = "/etc/init.d/postfix restart" 
  
  w.pid_file = "/var/spool/postfix/pid/master.pid"

  default_configurations(w)
  w.grace    = 30.seconds

  monitor_lifecycle(w)
end