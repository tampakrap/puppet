class system::locale (
  $locale_gen,
  $envd_lc_all,
  $envd_lang,
) {

  file { '/etc/locale.gen':
    content => inline_template('<%= @locale_gen.join("\n") + "\n" %>'),
  }

  file { '/etc/env.d/02locale':
    content => template('system/locale.erb'),
  }

  exec { '/usr/sbin/locale-gen':
    before      => Eselect['locale'],
    subscribe   => [
      File['/etc/locale.gen'],
      File['/etc/env.d/02locale'],
    ],
    refreshonly => true,
  }

}
