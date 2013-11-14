class service::log::syslog_ng {

  $postrotate = '/etc/init.d/syslog-ng reload > /dev/null 2>&1 || true'

  logrotate::rule { 'syslog-gerenic':
    path          => '/var/log/debug /var/log/syslog /var/log/kern.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'syslog-system':
    path          => '/var/log/cron.log /var/log/daemon.log /var/log/lpr.log /var/log/uucp.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'syslog-user':
    path          => '/var/log/user.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'syslog-news':
    path          => '/var/log/news/news.crit /var/log/news/news.err /var/log/news/news.notice',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'syslog-mail':
    path          => '/var/log/mail.log /var/log/mail.info /var/log/mail.err /var/log/mail.warn',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'syslog-hardened':
    path          => '/var/log/avc.log /var/log/audit.log /var/log/pax.log /var/log/grsec.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'syslog-auth':
    path          => '/var/log/auth.log',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

  logrotate::rule { 'syslog-rest':
    path          => '/var/log/messages',
    sharedscripts => true,
    missingok     => true,
    postrotate    => $postrotate,
  }

}
