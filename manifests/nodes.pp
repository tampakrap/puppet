node 'eyedea.pebkac.gr' {
  include service::portage
  include service::puppet::master
  include service::puppet::agent
}

node 'evidence.pebkac.gr' {
  include service::portage
  include service::puppet::agent
}

node 'raekwon.pebkac.gr' {
  include service::portage
  include service::puppet::agent
}
