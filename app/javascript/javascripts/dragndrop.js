window.addEventListener("DOMContentLoaded", () => {
  const form = document.getElementById("drag");

  if (form) {
    var fileInput = document.querySelector('input[type=file]');
    var filenameContainer = document.querySelector('#filename');
    var dropzone = document.querySelector('.dragndrop-form');



    fileInput.addEventListener('change', function() {
      var files = fileInput.files;
      console.log(files);
      for (var i = 0; i < files.length; i++) {
        // on récupère le i-ème fichier
        file = files.item(i);
        // // ou encore
        // file = files[i];
        filenameContainer.insertAdjacentHTML("beforeend", `<li>${file.name}</li>`);
      }
    });

    fileInput.addEventListener('dragenter', function() {
      dropzone.classList.add('dragover');
    });

    fileInput.addEventListener('dragleave', function() {
      dropzone.classList.remove('dragover');
    });
  };
});
