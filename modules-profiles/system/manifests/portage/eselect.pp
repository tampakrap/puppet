class system::portage::eselect (
  $ruby    = 'ruby19',
  $python  = 'python2.7',
  $python2 = 'python2.7',
  $python3 = 'python3.2',
  $gcc     = 'x86_64-pc-linux-gnu-4.6.3',
  $profile = "hardened/linux/$::architecture",
) {

  eselect {
    'ruby': set => $ruby;
    'python': set => $python;
    'python::python2': set => $python2;
    'python::python3': set => $python3;
    'gcc': set => $gcc;
    'profile': set => $profile;
  }

}
