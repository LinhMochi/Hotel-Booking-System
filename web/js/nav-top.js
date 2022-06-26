/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

document.querySelectorAll('.drop-box').forEach(dropbox=>{
    if(dropbox.querySelector('.drop-box-title')!==null){
        dropbox.querySelector('.drop-box-title').addEventListener('click',()=>{
        dropbox.querySelector('.drop-box-items').classList.toggle('hidden');		
        });
    }
});
