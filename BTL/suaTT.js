var frmEdit = document.getElementById('edit-form');
var inputList = frmEdit.getElementsByTagName('input');

window.onload = disableEdit();

function enableEdit() {
    for (let i = 1; i < inputList.length-1; i++) {
        inputList[i].removeAttribute('readonly');
        inputList[i].style.background = '#fff';
    }
}

function disableEdit() {
    for (let i = 1; i < inputList.length-1; i++) {
        inputList[i].value = inputList[i].getAttribute('value')
        inputList[i].setAttributeNode(document.createAttribute('readonly'));
        inputList[i].style.background = '#f7f6f2';
    }
}