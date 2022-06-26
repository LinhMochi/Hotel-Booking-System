	// check leaf year
	isLeapYear = (year)=>{
		return (year%4===0&& year%100!==0 && year%400===0)||(year%100===0&&year%400===0);
	}
	getFedDays = (year) =>{
		return isLeapYear(year) ? 29: 28;
	}
	 
	const month_name = ['Tháng 1','Tháng 2','Tháng 3','Tháng 4','Tháng 5','Tháng 6','Tháng 7','Tháng 8','Tháng 9','Tháng 10','Tháng 11','Tháng 12'];
	const dayofweek=['CN','T2','T3','T4','T5','T6','T7'];

	function getDateShow(date,i){
		let selecteddate = new Date(date);
		if(i===0) return dayofweek[selecteddate.getDay()]+','+(selecteddate.getDate()<10?'0':'')+selecteddate.getDate()+','+month_name[selecteddate.getMonth()];
		else if (i===1) return selecteddate.getFullYear()+'-'+(selecteddate.getMonth()<9?'0':'')+(selecteddate.getMonth()+1)+'-'+(selecteddate.getDate()<10?'0':'')+selecteddate.getDate();
	}

	function setDateShow(year,month,date,i){
		let selecteddate = new Date(year+'-'+(month<9?'0':'')+(month+1)+'-'+(date<10?'0':'')+date);
		if(i===0) return dayofweek[selecteddate.getUTCDay()]+','+(selecteddate.getDate()<10?'0':'')+selecteddate.getDate()+','+month_name[selecteddate.getMonth()];
		else if (i===1) return selecteddate.getFullYear()+'-'+(selecteddate.getMonth()<9?'0':'')+(selecteddate.getMonth()+1)+'-'+(selecteddate.getDate()<10?'0':'')+selecteddate.getDate();
	}

	// set defaut selected date

	let arrival_date = document.querySelector('.arrival-date');
	let department_date = document.querySelector('.department-date');

	let arrival_box = document.querySelector('.arrival');
	let department_box = document.querySelector('.department');

	let currDate = new Date();
 	let currMonth = currDate.getMonth();
 	let currYear = currDate.getFullYear();
	let nextDate = new Date(currDate);
	nextDate.setDate(nextDate.getDate()+1);

	// console.log(currDate.getDate());

 	arrival_date.value = getDateShow(currDate,1);
 	department_date.value = getDateShow(nextDate,1);

 	arrival_box.innerHTML = getDateShow(currDate,0);
 	department_box.innerHTML = getDateShow(nextDate,0);

 	let checkin = new Date(arrival_date.value);
	let checkout = new Date(department_date.value);


 	function setCurrDate(){// set date allow inputed date.
 		checkin = new Date(arrival_date.value);
	    checkout = new Date(department_date.value);
 		currMonth = checkin.getMonth();
 		currYear = checkin.getFullYear();
 		generateDatePicker();
 	} 

 	let pick_field = document.querySelector('.pick-box');
 	let pick_box = document.querySelector('.date-picker-container');
 	pick_field.addEventListener('click',()=>{
 		// setCurrDate()
 		if(pick_field.classList.length===1) pick_field.classList.add('pick-checkin');
 		pick_box.classList.toggle('pick');
 		if(pick_box.classList.length===2) pick_box.classList.toggle(pick_field.classList[1]);
 		// if(!(pick_field.classList.contains('pick-checkout')&&pick_field.classList.contains('pick-checkin')))	
 			selectstart();
 	});

	// generate calendar

	generateCalendar = (month, year, datepicker) =>{
		let days = datepicker.querySelector('.days');// get day container
		days.innerHTML=''
		let yearpicked = datepicker.querySelector('.year');// get year box of each
		let monthpicked = datepicker.querySelector('.month-picker');// get month pick box
		let daysofmonth=[31,getFedDays(year),31,30,31,30,31,31,30,31,30,31];// initial day of mont
		// let currDate = new Date();

		monthpicked.innerHTML = month_name[month];// set picked month
		yearpicked.innerHTML=year;// set picked year

		checkin = new Date(arrival_date.value);
		checkout = new Date(department_date.value);

		if(pick_box.classList.contains('pick-checkin')) console.log(checkin.getDate());
		if(pick_box.classList.contains('pick-checkout')) console.log(checkout.getDate());


		//let first_day =  new Date(year, month, 1);// create new object date to generate days in month
		let first_day =  new Date(year+'-'+(month+1)+'-01');
		// getDay 0-6 return  getDate() return 1-31 getMonth return 0-11 getFullYear return yyyy;
		// 
		currDate = new Date();
		
		// print list day in month
		for (let i = 0; i < daysofmonth[month] + first_day.getDay() ; i++) {
			let day = document.createElement('div');// create DOM element
			if( i>= first_day.getDay()){
				day.classList.add('day');
				day.innerHTML= i - first_day.getDay() +1;	
			}
			// add class current date 
			if (day.innerHTML == currDate.getDate()&& year === currDate.getFullYear()&& month === currDate.getMonth()) {
				day.classList.toggle('current-date');
			}
			//disable day < current day
			if((day.innerHTML<currDate.getDate()&& year == currDate.getFullYear()&& month == currDate.getMonth())||(( year <= currDate.getFullYear()&& month < currDate.getMonth()))||(year < currDate.getFullYear())){
				day.classList.remove('day');
				day.classList.add('disable');
				if(pick_box.classList.contains('pick-checkin')) console.log('here'+console.log('currDate'));
			}
			// disable day < checkin day when cust pick checkout day
			if(pick_box.classList.contains('pick-checkout')&& ((i - first_day.getDay()+1)<checkin.getDate()&& year === checkin.getFullYear() && month === checkin.getMonth())||(( year <= checkin.getFullYear()&& month < checkin.getMonth()))||(year < checkin.getFullYear())) {
				day.classList.remove('day');
				day.classList.add('disable');
			}

			days.appendChild(day);
		}
		markCheckInOut();// add class check in check out to day div

		// add click event to day div
		datepicker.querySelectorAll('.day').forEach((day_of_month,index,arr)=>{

 		day_of_month.addEventListener('click',()=>{
 					// if(day_of_month.classList[0]==='disable'||day_of_month.classList[0]==='current-date') return false;
 					if(day_of_month.classList.contains('disable')) return false;// discard day disabled
				else if(pick_field.classList.contains('pick-checkin')){

					document.querySelector('.check-in').classList.remove('check-in');
					arrival_box.innerHTML=setDateShow(year,month,day_of_month.innerText,0);
					arrival_date.value = setDateShow(year,month,day_of_month.innerText,1);
					
					if (arrival_date.value>=department_date.value) {
						if(arr.length===(index+1)) {
							department_date.value = year+'-'+((month<8?'0':'')+(month+2))+'-01';
							department_box.innerHTML=setDateShow(year,month+1,1,0);
						}
						else{
							let nextday = day_of_month.innerText;
							nextday	++;
						department_date.value=setDateShow(year,month,nextday,1);
						department_box.innerHTML=setDateShow(year,month,nextday,0);
						}
						document.querySelector('.check-out').classList.remove('check-out')
						// markCheckInOut();
						// disableday(index);
					}
					day_of_month.classList.add('check-in');
					pick_field.classList.toggle('pick-checkin');
					pick_field.classList.toggle('pick-checkout');
					pick_box.classList.toggle('pick-checkin');
					pick_box.classList.toggle('pick-checkout');
					// selectstart();
					disableday(index);
					markCheckInOut();
				}else if(pick_field.classList.contains('pick-checkout')){
					department_box.innerHTML=setDateShow(year,month,day_of_month.innerText,0);
					department_date.value=setDateShow(year,month,day_of_month.innerText,1);
					pick_field.classList.toggle('pick-checkout');
					pick_box.classList.toggle('pick');
					pick_box.classList.toggle('pick-checkout');
					setCurrDate();
				}
 		}
 			
 			);

 		});
	}

	function markCheckInOut(){
		checkin = new Date(arrival_date.value);
		checkout = new Date(department_date.value);

		document.querySelectorAll('.date-picker').forEach(datepicker=>{

			let year =datepicker.querySelector('.year').innerText;
			let month = month_name.indexOf(datepicker.querySelector('.month-picker').innerText);
			// console.log(year+' '+month+' '+checkin.getFullYear()+' '+ checkin.getMonth()+' '+checkin.getDate());
			datepicker.querySelectorAll('.day').forEach((day,index)=>{
			// 	console.log(day.innerText);
			if(day.innerText==checkin.getDate()&& year == checkin.getFullYear() && month == checkin.getMonth()){
				day.classList.add('check-in');
				// console.log(index);
			}
			// if((year+' '+month+' '+day.innerText)===(checkin.getFullYear()+' '+ checkin.getMonth()+' '+checkin.getDate())){
			// 	console.log('catch it'+year+' '+month+' '+day.innerText+checkin.getFullYear()+' '+ checkin.getMonth()+' '+checkin.getDate())
			// 	console.log('? '+(day.innerText==checkin.getDate()));
			// }
				
			if(day.innerText==checkout.getDate()&& year == checkout.getFullYear() && month == checkout.getMonth()){
				day.classList.add('check-out');
				// console.log(index);
			}
			});
		});
		// selectstart();
	}

	function highlight(start,end,index){
		document.querySelectorAll('.day').forEach((day,i)=>{
			// if(i===index) console.log(start+' '+end+" "+index+' '+i);

			if(pick_box.classList.contains('pick-checkin')){
				if(index<start){
					if(index===i) document.querySelector('.check-in').classList.add('choosing');
					if(i>index&&i<start){
						day.classList.add('picked-date');
					}
				}
				
				if(index>start&&index<end){
					if(start===i) day.classList.add('choosing');
					if(i>=start && i<index)	day.classList.remove('picked-date');

			    }
			    if(index===end){
			    	document.querySelector('.check-in').classList.add('choosing');
			    	if(i===index||i===(index+1)){
			    		day.classList.add('prepick');
			    	}
			    	if(i>=start&&i<end) day.classList.remove('picked-date');
			    }
			    if(index>end){
			    	document.querySelector('.check-in').classList.add('choosing');
			    	document.querySelector('.check-out').classList.add('choosing');
			    	if(i===index||i===(index+1)){
			    		day.classList.add('prepick');
			    	}
			    	if(i>=start&&i<end) day.classList.remove('picked-date');
			    }
			}
			if (pick_box.classList.contains('pick-checkout')) {
				
				
					// document.querySelector('.check-out').classList.add('choosing');
					// if(index<=(end-start)) {	
					// 	// if(i<index&&i>0) day.classList.add('picked-date');
					// 	if(i>index&&i<(end-start)) day.classList.remove('picked-date');
					// }
					// // if pick an date >end
					// if(index>(end-start)){
					// 	if(i>=(end-start)&&i<index) day.classList.add('picked-date');
					// }
				
				
			}
		});
	}

	function dehighlight(start,end,index){
		document.querySelectorAll('.day').forEach((day,i)=>{

			if(pick_box.classList.contains('pick-checkin')){
				if(index<start){
					if(index===i) document.querySelector('.check-in').classList.remove('choosing');
					if(i>index&&i<start){
						day.classList.remove('picked-date');
					}
				}
				
				if(index>start&&index<end){
					if(start===i) day.classList.remove('choosing');
					if(i>=start && i<index)	day.classList.add('picked-date');

			    }
			    if(index===end){
			    	document.querySelector('.check-in').classList.remove('choosing');
			    	if(i===index||i===(index+1)){
			    		day.classList.remove('prepick');
			    	}
			    	if(i>=start&&i<end) day.classList.add('picked-date');
			    }
			    if(index>end){
			    	document.querySelector('.check-in').classList.remove('choosing');
			    	document.querySelector('.check-out').classList.remove('choosing');
			    	if(i===index||i===(index+1)){
			    		day.classList.remove('prepick');
			    	}
			    	if(i>=start&&i<end) day.classList.add('picked-date')
			    }
			}
			if (pick_box.classList.contains('pick-checkout')) {
				if(day.classList.contains('prepick')) day.classList.remove('prepick');
				
				// 	document.querySelector('.check-out').classList.remove('choosing');
				// 	if(index<=(end-start)) {
				// 		// if(i<index&&i>0) day.classList.remove('picked-date');
				// 		if(i>index&&i<(end-start)) day.classList.add('picked-date');
				// 	}	
				// 	if(index>(end-start)){
				// 		if(i>=(end-start)&&i<index) day.classList.remove('picked-date');
				// 	}
				
				
			}
		});

	}


	function selectable(start,end){
		document.querySelectorAll('.day').forEach((day,index)=>{
			
				day.addEventListener('mouseenter',()=>{
					if(day.classList.contains('day')) highlight(start,end,index);
	 			});
	 			day.addEventListener('mouseleave',()=>{
	 				if(day.classList.contains('day')) dehighlight(start,end,index);
	 			});
			
		});
	}

	function selectstart(){
		let start = -1, end =-1;
		document.querySelectorAll('.day').forEach((day,index)=>{
			if(day.classList.contains('check-in')) {
				// console.log(pick_box.classList.contains('pick-checkout')+'start');
				// disableday(index);
				// selectable(index);
				start = index;
				if(pick_box.classList.contains('pick-checkout')) disableday(index);
			}
			if(day.classList.contains('check-out')) {
				// console.log('can select checkin');
				// selectable(index);
				end = index;
			}
			if(start === -1){
				day.classList.remove('picked-date');
			}
			if(start !== -1 && end === -1){
				day.classList.add('picked-date');
			}
			if(start !== -1 && end !== -1){
				selectable(start,end);
			}
		});
	}

	function disableday(i){
		document.querySelectorAll('.day').forEach((day,index)=>{
			if(index<i) {
				day.classList.remove('day');
				day.classList.add('disable')
			}
		});
	}

	generateDatePicker=()=>{
		document.querySelectorAll('.date-picker').forEach((datepicker,index)=>{
			generateCalendar((currMonth+index),currYear,datepicker);
		});
	}
		document.querySelectorAll('.date-picker').forEach((datepicker,index)=>{
			generateCalendar((currMonth+index),currYear,datepicker);
			let month_list = datepicker.querySelector('.month-list');
			let month_picker = datepicker.querySelector('.month-picker');
			let year_picker = datepicker.querySelector('.year');
			month_name.forEach((e,index)=>{
			let month = document.createElement('div');
			month.classList.toggle('month');
			month.innerHTML = e;
			month.addEventListener('click',()=>{
				month_list.classList.toggle('active');
				currMonth = index;
				generateDatePicker();
			}); 
			month_list.appendChild(month);
			});
		 	datepicker.querySelector('.month-picker').addEventListener('click',()=>{
		 		month_list.classList.toggle('active');
		 	});


		 	datepicker.querySelector('.pre-year').addEventListener('click',()=>{
		 		let y = year_picker.innerText;
		 		y--;
		 		year_picker.innerHTML=y;
		 		currYear=y;
		 		// console.log(y);
		 		generateDatePicker();
		 	});	
		 	datepicker.querySelector('.next-year').addEventListener('click',()=>{
		 		let y = year_picker.innerText;
		 		y++;
		 		// console.log(y);
		 		year_picker.innerHTML=y;
		 		currYear=y;
		 		// generateCalendar((currMonth+index),y,datepicker);
		 		generateDatePicker();
	 		});
		});