/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


let header = document.querySelector('.main-right .header');

let filter = header.querySelector('select');// filter reservation option

filter.addEventListener('change',()=>{
    const newForm = document.createElement('form');
    newForm.method = "POST";
    newForm.action = 'reservation?filter='+filter.value;
    table.appendChild(newForm);

//    newForm.submit();
});

let table = document.querySelector('.main-right table');
table.querySelectorAll("tbody tr").forEach((tr) => {
    tr.addEventListener('click', () => {
        console.log(tr);
    });
    const select = tr.querySelector('select'); //change status reservation;

    select.classList.toggle(select.value);
    select.addEventListener('change', () => {
        console.log(select.value);
    });

    select.querySelectorAll('option').forEach((op) => {
        console.log(op.value);
        if (op.value === select.value)
            op.hidden = true;
    });

    let hidden_btn = tr.querySelector('.fa-eye-slash');
    let view_btn = tr.querySelector('.fa-external-link-square');
    let update_btn = tr.querySelector('.fa-pencil-square-o');
    let del_btn = tr.querySelector('.fa-times');

    let newForm = document.createElement('form');
    newForm.method = "POST";

    view_btn.addEventListener('click', () => {
        newForm.action = 'viewreservation?id=' + tr.id;
        table.appendChild(newForm);


//    newForm.submit();
    });

    if(update_btn!==null ) update_btn.addEventListener('click', () => {
        newForm.action = 'viewreservation?id=' + tr.id;
        table.appendChild(newForm);

//    newForm.submit();
    });

    if(del_btn!==null ) del_btn.addEventListener('click', () => {

        if (confirm('Are u sure about that ?')) {
            newForm.action = 'viewreservation?id=' + tr.id;
            table.appendChild(newForm);
            console.log('sure');
        }

//    newForm.submit();
    });

    if(hidden_btn!==null ) hidden_btn.addEventListener('click', () => {
        tr.classList.toggle("hidden");
        table.appendChild(newForm);
        
//    newForm.submit();
    });

});