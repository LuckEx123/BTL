function addU() {
    var modal = document.getElementsByClassName('add-container')[0];
    modal.style.display = 'flex';
    var x = document.getElementsByClassName('add-form')[0];
    if (x.offsetHeight >= window.innerHeight) {
        modal.style.alignItems = 'flex-start';
    }
}

window.onclick = function () {
    huy = document.getElementById('huy');
    if (event.target == modal || event.target == huy) {
        modal.style.display = 'none';
    }
};