document.getElementById('sidebarCollapse').onclick = function () {
    document.getElementsByClassName('nav')[0].classList.toggle('active');
    document.getElementsByClassName('main-content')[0].classList.toggle('active');
}