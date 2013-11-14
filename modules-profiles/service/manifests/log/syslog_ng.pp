class service::log::syslog_ng {

  $postrotate = '/etc/init.d/syslog-ng reload > /dev/null 2>&1 || true'

  logrotate::rule { 'debug':
    path          => '/var/log/debug',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'syslog':
    path          => '/var/log/syslog',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'kern':
    path          => '/var/log/kern.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'cron':
    path          => '/var/log/cron.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'daemon':
    path          => '/var/log/daemon.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'lrp':
    path          => '/var/log/lrp.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'uucp':
    path          => '/var/log/uucp.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'user':
    path          => '/var/log/user.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'news':
    path          => '/var/log/news/news.crit /var/log/news/news.err /var/log/news/news.notice',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'mail':
    path          => '/var/log/mail.log /var/log/mail.info /var/log/mail.err /var/log/mail.warn',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'hardened':
    path          => '/var/log/avc.log /var/log/audit.log /var/log/pax.log /var/log/grsec.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'auth':
    path          => '/var/log/auth.log',
    sharedscripts => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'messages':
    path          => '/var/log/messages',
    sharedscripts => true,
    postrotate    => $postrotate,
  }

}
