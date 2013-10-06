class service::portage::eselect (
  $ruby,
  $python,
  $python2,
  $python3,
  $gcc,
) {

  eselect { 'ruby': set => $ruby }
  eselect { 'python': set => $python }
  eselect { 'python::python2': set => $python2 }
  eselect { 'python::python3': set => $python3 }
  eselect { 'gcc-config': set => $gcc }

}
