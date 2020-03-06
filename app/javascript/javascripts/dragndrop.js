import { directUploads } from './directuploads';

window.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("drag");

  if (form) {
    var fileInput = document.querySelector('input[type=file]');
    var filenameContainer = document.querySelector('#filename');
    var dropzone = document.querySelectorAll('.label');
    var pactive = document.querySelector('.inactive');

    dropzone.forEach((element) => {
      element.querySelector('.dragndrop-form > p').classList.remove('inactive');

      element.querySelector('input[type=file]').addEventListener('change', function() {
        var files = fileInput.files;
        element.querySelector('.dragndrop-form > p').classList.add('inactive');
        console.log(files);
      for (var i = 0; i < files.length; i++) {
        // on récupère le i-ème fichier
        // file = files.item(i);
        // // ou encore
        // file = files[i];
        // directUploads();
        // filenameContainer.insertAdjacentHTML("beforeend", `<li>${file.name}</li>`);
      }
    });

    });
    directUploads();

    fileInput.addEventListener('dragenter', function() {
      dropzone.classList.add('dragover');
    });

    fileInput.addEventListener('dragleave', function() {
      dropzone.classList.remove('dragover');
    });
  };
});
