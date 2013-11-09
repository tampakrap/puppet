class system::portage::eselect (
  $ruby,
  $python,
  $python2,
  $python3,
  $gcc,
  $profile,
  $timezone,
  $locale,
  $php5,
) {

  eselect {
    'ruby': set => $ruby;
    'python': set => $python;
    'python::python2': set => $python2;
    'python::python3': set => $python3;
    'gcc': set => $gcc;
    'profile': set => $profile;
    'timezone': set => $timezone;
    'locale': set => $locale;
    'php::apache2': set => $php5;
    'php::cli': set => $php5;
    'php::cgi': set => $php5;
  }

}
