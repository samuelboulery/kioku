const photographerButton = document.getElementById('photographer');
const schoolButton = document.getElementById('school');
const container = document.getElementById('container');

photographerButton.addEventListener('click', () => {
    container.classList.add('right-panel-active');
});

schoolButton.addEventListener('click', () => {
    container.classList.remove('right-panel-active');
});
