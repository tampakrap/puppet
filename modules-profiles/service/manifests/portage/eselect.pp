class service::portage::eselect (
  $ruby,
  $python2,
  $gcc,
) {

  eselect { 'ruby': set => $ruby }
  eselect { 'python::python2': set => $python2 }
  eselect { 'gcc-config': set => $gcc }

}
