class service::portage::eselect (
  $ruby,
  $python2,
) {

  eselect { 'ruby': set => $ruby }
  eselect { 'python:python2': set => $python2 }

}
