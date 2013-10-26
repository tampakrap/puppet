class service::mail {

  include service::mail::postfix
  include service::mail::aliases

}
