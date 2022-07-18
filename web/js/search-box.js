/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


// add envent to open drop box
		 document.querySelectorAll('.drop-box').forEach(dropbox=>{
		 	let droptitle = dropbox.querySelector('.drop-title');
		 	let dropitems = dropbox.querySelector('.drop-items');
		 	if(droptitle!==null) droptitle.addEventListener('click',()=>{
		 		dropitems.classList.toggle('drop');
                                if(!dropitems.classList.contains('drop')) dropitems.classList.toggle('hidden');
		 	})
		 })
// fill to input field and drop - title
let selectbox = document.querySelector('.select-box');
// set initial value
selectbox.querySelectorAll('input').forEach(inputfield=>{
	document.querySelector('.'+inputfield.classList[0]+'-show').querySelector('.number').innerHTML=inputfield.value;
	document.querySelector('.'+inputfield.classList[0]+'-change').querySelector('.number').innerHTML=inputfield.value;
});

selectbox.querySelectorAll('input').forEach(inputfield=>{
	let show = document.querySelector('.'+inputfield.classList[0]+'-show');
	let change = document.querySelector('.'+inputfield.classList[0]+'-change');
			
	change.querySelector('.des').addEventListener('click',()=>{
        if(!isEqualZero(inputfield)) {

        } else{
		--change.querySelector('.number').innerHTML;
        	--show.querySelector('.number').innerHTML;
		inputfield.value=change.querySelector('.number').innerHTML;
		}
        	});

	change.querySelector('.inc').addEventListener('click',()=>{
		++change.querySelector('.number').innerHTML;
		++show.querySelector('.number').innerHTML;
		inputfield.value=change.querySelector('.number').innerHTML;
	});
});	
function isEqualZero(input){
    if (input.value===0) {
	console.log('can\' decrease!');
	return false;
    } else {
	return true;
    }
}