/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


// add envent to open drop box
document.querySelectorAll('.drop-box:not(.disable)').forEach(dropbox => {
    let droptitle = dropbox.querySelector('.drop-title');
    let dropitems = dropbox.querySelector('.drop-items');
    if (droptitle !== null)
        droptitle.addEventListener('click', () => {
//		 		dropitems.classList.toggle('drop');
//                                if(!dropitems.classList.contains('drop')) 
            dropitems.classList.toggle('hidden');
        });
});



function dropboxenable(dropbox){
    let droptitle = dropbox.querySelector('.drop-title');
    let dropitems = dropbox.querySelector('.drop-items');
    if (droptitle !== null)
        droptitle.addEventListener('click', () => {
//		 		dropitems.classList.toggle('drop');
//                                if(!dropitems.classList.contains('drop')) 
            dropitems.classList.toggle('hidden');
        });    
}
// fill to input field and drop - title
let selectbox = document.querySelector('.select-box');
// set initial value
selectbox.querySelectorAll('input').forEach(input_field => {
    document.querySelector('.' + input_field.classList[0] + '-show').querySelector('.number').innerHTML = input_field.value;
    document.querySelector('.' + input_field.classList[0] + '-change').querySelector('.number').innerHTML = input_field.value;
});

selectbox.querySelectorAll('input').forEach(input_field => {
    let show = document.querySelector('.' + input_field.classList[0] + '-show');
    let change = document.querySelector('.' + input_field.classList[0] + '-change');

    change.querySelector('.des').addEventListener('click', () => {
        console.log(input_field);
        if (!isEqualZero(input_field)) {
            console.log('=0');
        } else {
            --change.querySelector('.number').innerHTML;
            --show.querySelector('.number').innerHTML;
             input_field.value = change.querySelector('.number').innerHTML;
//            console.log('des roi ,ma '+change.querySelector('.number').innerHTML);
//            console.log(input_field.value);
        }
    });

    change.querySelector('.inc').addEventListener('click', () => {
        ++change.querySelector('.number').innerHTML;
        ++show.querySelector('.number').innerHTML;
        input_field.value = change.querySelector('.number').innerHTML;
    });
});
function isEqualZero(input) {
    console.log("isEqualZero"+input.value);
    if (input.value == 0) {
        console.log('can\' decrease!');
        return false;
    } else {
        return true;
    }
}