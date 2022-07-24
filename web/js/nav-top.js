/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

document.querySelectorAll('.drop-box').forEach(dropbox => {
    if (dropbox.querySelector('.drop-box-title') !== null) {
        dropbox.querySelector('.drop-box-title').addEventListener('click', () => {
            dropbox.querySelector('.drop-box-items').classList.toggle('hidden');
        });
    }
});

let drop_cart = document.querySelector('.drop-cart');

let room_cart = drop_cart.querySelector('.picked-room');

if (room_cart !== null) {
    room_cart.querySelectorAll('.item').forEach((picked_room) => {
        const des = picked_room.querySelector('.setbox .btn.des');
        const quan = picked_room.querySelector('.setbox .quan input');
        const inc = picked_room.querySelector('.setbox .btn.inc');
        const del = picked_room.querySelector('.close-btn');
        // console.log(des);
        // console.log(quan.value);
        // console.log(inc);
        // console.log(del);
        let newForm = document.createElement("form");
        newForm.method = "POST";


        // newForm.submit();

        des.addEventListener('click', () => {
            if(quan.value == 1 && !confirm('Xoá phòng khỏi giỏ hàng.Bạn có muốn tiép tục?')){
                console.log(quan.value);
                
                return;
            } else if (quan.value > 0) {
                quan.value--;
                newForm.action = "UpdateCart?update=room&id=" + picked_room.id + "&quantity=" + quan.value + "&p=hoteldetail";
                room_cart.appendChild(newForm);
                                    console.log(newForm);
                newForm.submit();
            }
        });

        inc.addEventListener('click', () => {
            if (quan.value >= 0)
                quan.value++;
            newForm.action = "UpdateCart?update=room&id=" + picked_room.id + "&quantity=" + quan.value+ "&p=hoteldetail";
            room_cart.appendChild(newForm);
//                                console.log(newForm);
            newForm.submit();
        });

        del.addEventListener('click', () => {
            if(!confirm('Thao tác không thể khôi phục. Bạn muốn xoá phòng khỏi giỏ hàng?')) return;
            quan.value = 0;
            newForm.action = "UpdateCart?update=room&id=" + picked_room.id + "&quantity=" + quan.value+ "&p=hoteldetail";
            room_cart.appendChild(newForm);
//                                console.log(newForm);
            newForm.submit();
        });

        quan.addEventListener('change', () => {
            if (quan.value < 0)
                quan.value = 0;
            newForm.action = "UpdateCart?update=room&id=" + picked_room.id + "&quantity=" + quan.value+ "&p=hoteldetail";
            room_cart.appendChild(newForm);
//                                console.log(newForm);
            newForm.submit();
        });

    });
}

let service_cart = document.querySelector('.drop_cart .picked-service');
if (service_cart !== null) {
    service_cart.querySelectorAll('.item').forEach((service_item) => {
        const des = service_item.querySelector('.btn.des');
        const inc = service_item.querySelector('.btn.inc');
        const quan = service_item.querySelector('.quan input');
        const del = service_item.querySelector('.close-btn');
        // console.log(des);
        // console.log(quan.value);
        // console.log(inc);
        // console.log(del);
        let newForm = document.createElement("form");
        newForm.method = "POST";


        // newForm.submit();

        des.addEventListener('click', () => {
            if(quan.value == 1 && !confirm('Thao tác không thể khôi phục. Bạn muốn tiếp tục xoá dịch vụ khỏi giỏ hàng ?')){
                 return;
            } else if (quan.value > 0){
                    quan.value--;
                newForm.action = "UpdateCart?update=service&id=" + service_item.id + "&quantity=" + quan.value+ "&p=hoteldetail";
                service_cart.appendChild(newForm);
//                                    console.log(newForm);
                newForm.submit();                
            }
        });

        inc.addEventListener('click', () => {
            if (quan.value >= 0)
                quan.value++;
            newForm.action = "UpdateCart?update=service&id=" + service_item.id + "&quantity=" + quan.value+ "&p=hoteldetail";
            service_cart.appendChild(newForm);
//            console.log(newForm);
            newForm.submit();
        });

        del.addEventListener('click', () => {
            if(confirm('Thao tác không thể khôi phục. Bạn muốn tiếp tục xoá dịch vụ này ?')){// check confirm del service
                quan.value = 0;
                newForm.action = "UpdateCart?update=service&id=" + service_item.id + "&quantity=" + quan.value+ "&p=hoteldetail";
                service_cart.appendChild(newForm);
//                                    console.log(newForm);
                newForm.submit();
            }
        });

        quan.addEventListener('change', () => {
            if (quan.value < 0)
                quan.value = 0;
            newForm.action = "UpdateCart?update=service&id=" + service_item.id + "&quantity=" + quan.value+ "&p=hoteldetail";
            service_cart.appendChild(newForm);
//                                console.log(newForm);
            newForm.submit();
        });
    });
}
