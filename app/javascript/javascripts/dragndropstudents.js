import Sortable from 'sortablejs';

const studentsContainer = document.querySelector('.container-students');

if (studentsContainer) {
  const photos = document.querySelector('#imgs');
  const names = document.querySelector('#names');
  const targets = document.querySelectorAll('.target');
  targets.forEach( function(target) {
    new Sortable(target, {
      group: "words",
      onAdd: function (evt){ console.log('onAdd.bar:', evt.item); },
      onUpdate: function (evt){ console.log('onUpdate.bar:', evt.item); },
      onRemove: function (evt){ console.log('onRemove.bar:', evt.item); }
    });
  });
  new Sortable(names, {
    group: "words",
    onAdd: function (evt){ console.log('onAdd.foo:', evt.item); },
    onUpdate: function (evt){ console.log('onUpdate.foo:', evt.item); },
    onRemove: function (evt){ console.log('onRemove.foo:', evt.item); }
  });

}
