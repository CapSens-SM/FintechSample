export function copyToClipboard(targetInputId) {
  var targetInput = document.getElementById(targetInputId);
  targetInput.select();
  targetInput.focus();
  targetInput.select();
  document.execCommand("Copy");
  toastr.success('Copied in clipboard !')
}

global.copyToClipboard = copyToClipboard;
