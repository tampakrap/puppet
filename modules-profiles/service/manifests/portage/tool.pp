define service::portage::tool {
  file { "/etc/facter/facts.d/gentoo_tool_${name}.txt":
    content => "gentoo_tool_${name}=true",
    require => File['/etc/facter/facts.d'],
  }
}
