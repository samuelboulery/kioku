const filters = document.querySelector('.filterscheckbox');
const schools = document.querySelectorAll('.card-school');

if (filters) {
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
}
