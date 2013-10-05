class service::portage::eselect (
  $ruby
  $python:python2
) {

  eselect { 'ruby': set => $ruby }
  eselect { 'python:python2': set => $python:python2 }

}
