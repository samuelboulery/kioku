import Swal from 'sweetalert2/dist/sweetalert2.js'

import 'sweetalert2/src/sweetalert2.scss'

const associationStudentPhoto = (event, studentId, photoId) => {
  console.log("coucou");
 const student = {
    student_id: studentId,
    photo_id: photoId,
  };
  // Passer id classroom

  console.log(event);
  console.log(studentId);
  console.log(photoId);
  const url = `/director/students/${studentId}`;
  fetch(url, {
    method: "PATCH",
    headers: {
      'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
    },
    body: JSON.stringify(student)
  })
    .then((_r) => {
      if (document.querySelector('#names').childElementCount == 0) {
        Swal.fire({
          title: 'Association terminée !',
          showClass: {
            popup: 'animated fadeInDown faster'
          },
          hideClass: {
            popup: 'animated fadeOutUp faster'
          },
          customClass: {
            confirmButton: 'btn-pink'
          }
        })
      }
    });
};

export { associationStudentPhoto };
