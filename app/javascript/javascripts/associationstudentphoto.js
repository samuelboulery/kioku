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
    // .then(response => response.json())
    // .then((data) => {
    //   console.log(data);
    // });
};


export { associationStudentPhoto };
