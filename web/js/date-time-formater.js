/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

isLeapYear = (year) => {
    return (year % 4 === 0 && year % 100 !== 0 && year % 400 === 0) || (year % 100 === 0 && year % 400 === 0);
};

getFedDays = (year) => {
    return isLeapYear(year) ? 29 : 28;
};

const month_name = ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'];
const dayofweek = ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'];

function getDateShow(date, i) {
    let selecteddate = new Date(date);
    if (i === 0)
        return dayofweek[selecteddate.getDay()] + ',' + (selecteddate.getDate() < 10 ? '0' : '') + selecteddate.getDate() + ',' + month_name[selecteddate.getMonth()];
    else if (i === 1)
        return selecteddate.getFullYear() + '-' + (selecteddate.getMonth() < 9 ? '0' : '') + (selecteddate.getMonth() + 1) + '-' + (selecteddate.getDate() < 10 ? '0' : '') + selecteddate.getDate();
}

function setDateShow(year, month, date, i) {
    let selecteddate = new Date(year + '-' + (month < 9 ? '0' : '') + (month + 1) + '-' + (date < 10 ? '0' : '') + date);
    if (i === 0)
        return dayofweek[selecteddate.getUTCDay()] + ',' + (selecteddate.getDate() < 10 ? '0' : '') + selecteddate.getDate() + ',' + month_name[selecteddate.getMonth()];
    else if (i === 1)
        return selecteddate.getFullYear() + '-' + (selecteddate.getMonth() < 9 ? '0' : '') + (selecteddate.getMonth() + 1) + '-' + (selecteddate.getDate() < 10 ? '0' : '') + selecteddate.getDate();
}

document.querySelectorAll('.date-format').forEach(dateformat => {
    setTimeout(dateformat.innerHTML = getDateShow(new Date(dateformat.innerHTML), 0), 3000);
});

document.querySelectorAll(".datetime-format").forEach(datetimeformat => {
    const formater = new Date(datetimeformat.innerHTML);
    console.log(datetimeformat.innerHTML);
    console.log(formater);
    if (datetimeformat.classList.contains('f2'))
        datetimeformat.innerHTML = formater.getHours() + ' giờ ' + formater.getUTCMinutes() + ' phút, Ngày' + formater.getDate() + ', ' + month_name[formater.getMonth()];
    else {
        datetimeformat.innerHTML = formater.getHours() + ' giờ ' + ', Ngày' + formater.getDate() + ', ' + month_name[formater.getMonth()];
    }
//                   formater.getHours()+' giờ '+ formater.getMinutes()+' phút '+ dayofweek[formater.getDay()]+', Ngày'+ formater.getDate()+', '+month_name[formater.getMonth()]+', Năm'+formater.getFullYear(); 
});

// digital - clock

const clock = document.querySelector('.digital-clock ');
if (clock !== null) {
    const hour = document.querySelector('.digital-clock .hour');
    const minute = document.querySelector('.digital-clock .minutes');
    const second = document.querySelector('.digital-clock .second');
    const period = document.querySelector('.digital-clock .period');

    const M = document.querySelector('.digital-clock .month-name');// month
    const D = document.querySelector('.digital-clock .day-name');// day in week
    const d = document.querySelector('.digital-clock .date-name');// date
    
    setInterval(() => {
        const today = new Date();
        hour.innerHTML = today.getHours() < 10 ? ('0' + today.getHours()) : (today.getHours());
        minute.innerHTML = today.getMinutes() < 10 ? ('0' + today.getMinutes()) : (today.getMinutes());
        second.innerHTML = today.getSeconds() < 10 ? ('0' + today.getSeconds()) : (today.getSeconds());
        period.innerHTML = today.getHours() > 12 ? 'PM' : 'AM';
        // console.log(today.getHours()+ ':'+today.getMinutes()+':'+(today.getSeconds()<10?('0'+today.getSeconds()):(today.getSeconds())));
        M.innerHTML = month_name[today.getMonth()];
        D.innerHTML = dayofweek[today.getUTCDay()];
        d.innerHTML = today.getUTCDate() < 10 ? ('0' + today.getUTCDate()) : (today.getUTCDate());
    }, 1000);

}