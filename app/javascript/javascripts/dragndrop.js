import { directUploads } from './directuploads';

window.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("drag");

  if (form) {
    var fileInputs = document.querySelectorAll('input[type=file]');
    var dropzone = document.querySelectorAll('.label');
    var pactives = document.querySelectorAll('.inactive');

    dropzone.forEach((element) => {
      var fileInput = element.querySelector('input[type=file]');
      var dropzone2 = element.querySelector('.dragndrop-form');
      var pactive = element.querySelector('.inactive');
      var filenameContainer = element.querySelector('.files');

      element.querySelector('.dragndrop-form > p').classList.remove('inactive');


      element.querySelector('input[type=file]').addEventListener('change', function() {
        var files = fileInput.files;
        element.querySelector('.dragndrop-form > p').classList.add('inactive');
        // filenameContainer.innerText = fileInput.files.split('\\').pop();
        console.log(files);
        for (var i = 0; i < files.length; i++) {
        var file = files[i];
        console.log(file.name);
        filenameContainer.insertAdjacentHTML("beforeend", `<p>${file.name}</p>`);
      }

    });

    fileInput.addEventListener('dragenter', function() {
      dropzone2.classList.add('dragover');
    });

    fileInput.addEventListener('dragleave', function() {
      dropzone2.classList.remove('dragover');
    });

    });

  };
  directUploads();
});
