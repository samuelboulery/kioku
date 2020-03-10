const filters = document.querySelector('.filterscheckbox');
const schools = document.querySelectorAll('.card-school');

filters.querySelectorAll('input').forEach((input) => {
  input.addEventListener("click", (event) => {
    const inputCat = input.dataset.category;
    console.log(inputCat);
    if (input.checked) {
      schools.forEach((school) => {
        if (school.dataset.category == inputCat) {
          school.style.display = 'block';
        };
      });
    } else {
      schools.forEach((school) => {
        if (school.dataset.category == inputCat) {
          school.style.display = 'none';
        };
      });
    };
  });
});













// document.querySelectorALl('.filterscheckbox');
//   filterscheckbox.addEventListener("click", (event) => {

//     // if elementary == true
//     //   maternelle.forEach((school) => school.style.visibility = "visible"
//     // else
//     //   maternelle.forEach((school) => school.style.visibility = "hidden"
//   });
// });

// elementary
// comprehensive
// nursery










// quand je clique sur la case maternelle
// affiche/desaffiche toutes mes classes maternelles



// TODO add categorie for school table and seed
