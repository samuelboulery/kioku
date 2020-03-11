import Sortable from 'sortablejs';
import { associationStudentPhoto } from './associationstudentphoto';

const studentsContainer = document.querySelector('[data-init-student-dnd]');

if (studentsContainer) {
  const photos = document.querySelector('#imgs');
  const names = document.querySelector('#names');
  const targets = document.querySelectorAll('.target');
  //   const name = document.querySelector('.name-container > p');
  targets.forEach(function(target) {
    new Sortable(target, {
      group: "words",
      // onChange: function (evt){
      //   const name = document.querySelector('.name-container > p');
      //   name.innerText = evt.item.innerText
      //   const li = document.querySelector('.target');
      //   console.log(li);
      //   // document.querySelector(".name-container > p").innerText = evt.item.innerText;

      //   li.classList.add("target-hidden");
      // },
      onAdd: function (evt){
        // console.log('1onAdd.bar:', evt);
        // console.log('student id', evt.item.dataset.studentid);
        // console.log('photo id', evt.target.dataset.photoid);
        console.log('studentid ', evt.item.dataset.studentid)
        console.log('photo id ', evt.target.dataset.photoid)
        associationStudentPhoto(evt, evt.item.dataset.studentid, evt.target.dataset.photoid);

      },
      onUpdate: function (evt){ console.log('1onUpdate.bar:', evt); },
      onRemove: function (evt){ console.log('1onRemove.bar:', evt); }
    });
  });

  new Sortable(names, {
    group: "words",
    onAdd: function (evt){ console.log('2onAdd.foo:', evt); },
    onUpdate: function (evt){ console.log('2onUpdate.foo:', evt); },
    onRemove: function (evt){ console.log('2onRemove.foo:', evt); }
  });
}
