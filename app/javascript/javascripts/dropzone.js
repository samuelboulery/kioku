const dropzones = document.querySelectorAll('[data-dropzone]');

dropzones.forEach((dropzone) => {
  const inputFile = dropzone.querySelector('input[type="file"]');
  inputFile.addEventListener('change', (event) => {
    const filename = inputFile.value.split(/(\\|\/)/g).pop();
    dropzone.querySelector('#files').innerHTML = '<i class="far fa-file mr-2"></i>' + filename;
  })
});
