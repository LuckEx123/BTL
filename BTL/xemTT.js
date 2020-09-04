function addU() {
    modal = document.getElementsByClassName('add-container')[0];
    modal.style.display = 'flex';
}

window.onclick = function () {
    huy = document.getElementById('huy');
    if (event.target == modal || event.target == huy) {
        modal.style.display = 'none';
    }
};