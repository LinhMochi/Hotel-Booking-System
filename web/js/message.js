/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


let error_box = document.querySelector('.error-box');
let message = error_box.querySelector('.error-message');
let close_error = message.querySelector('.close-error-message');
close_error.addEventListener('click', () => {
    message.classList.toggle('hidden');
});
function createErrorMessage(s) {
    let message_clone = message.cloneNode(true);
    message_clone.querySelector('p').innerHTML = s;
    if (message_clone.classList.length === 3)
        message_clone.classList.toggle('hidden');
    message_clone.classList.add('clone_mess');
    setClose(message_clone);
    let error_messages = error_box.querySelectorAll('.clone_mess');
    error_messages.forEach(c => {
        if (c.offsetWidth === 0)
            c.classList.add('absolutely');
    });
    error_box.appendChild(message_clone);
}
function createMessage(s) {
    let message_clone = message.cloneNode(true);
    message_clone.querySelector('p').innerHTML = s;
    if (message_clone.classList.contains('hidden')){
        message_clone.classList.toggle('hidden');
    }
    message_clone.classList.toggle('notify');
    message_clone.classList.add('clone_mess');
    setClose(message_clone);
    let error_messages = error_box.querySelectorAll('.clone_mess');
    error_messages.forEach(c => {
        if (c.offsetWidth === 0)
            c.classList.add('absolutely');
    });
    error_box.appendChild(message_clone);
}
function setClose(m) {
    let error_messages = error_box.querySelectorAll('.error-message');
    m.querySelector('.close-error-message').addEventListener('click', () => {
        m.classList.toggle('hidden');
    });
}

