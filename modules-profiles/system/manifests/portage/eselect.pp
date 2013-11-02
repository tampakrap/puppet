class system::portage::eselect (
  $ruby,
  $python,
  $python2,
  $python3,
  $gcc,
  $profile,
  $timezone,
  $locale,
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
  }

}
