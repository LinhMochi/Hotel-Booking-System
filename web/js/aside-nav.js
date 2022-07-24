/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

let avatar = document.querySelector('.aside-navigation .avatar-box');
avatar.addEventListener('click', () => {
    avatar.classList.toggle("active");
});

document.querySelectorAll(".aside-navigation .slide-nav").forEach((sl) => {
    if (sl !== null) {
        sl.addEventListener('click', () => {
            sl.classList.toggle('active');
        });
    }
});
