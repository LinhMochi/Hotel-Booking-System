	function parseShow(amount) {
	return amount.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	function parseData(amount){
	return amount.toString().replace(/,/g,"");
	}
	console.log(parseShow(10000000));
	console.log(parseData(parseShow(10000000)));

	let priceGap = 1000;
	let maxPrice = 20000000;

	document.querySelectorAll('.price-filter').forEach((priceFilter)=>{
		let rangeInput = priceFilter.querySelectorAll('.double-range input');
		let progress = priceFilter.querySelector('.price-range .progress');
		let inputPrice = document.querySelectorAll('.price-box input');

	// initial by input
		let min= parseInt(parseData(inputPrice[0].value))/1000;
		let max = parseInt(parseData(inputPrice[1].value))/1000;
		rangeInput[0].value = min ;
		rangeInput[1].value = max;
		progress.style.left=""+((min/rangeInput[1].max)*100)+"%";
		progress.style.right = ""+100-((max/rangeInput[1].max)*100)+ "%";

	// input


		inputPrice.forEach((price,i)=>{
			price.addEventListener("keypress",(evt)=>{
				let char = String.fromCharCode(evt.which);
				let priceValue = parseData(price.value);
				if(!/[0-9]/.test(char)) {
					evt.preventDefault();
				}
				if(i===0){// input min lon hon current max value
					// console.log(parseInt(parseData(inputPrice[1].value))+" "+parseInt(priceValue+char)+" "+1000);
					if((parseInt(parseData(inputPrice[1].value))-parseInt((priceValue+char)))<1000){
						price.value = parseShow(parseInt(parseData(inputPrice[1].value)) - priceGap*1000);
						console.log("min gap must be 1000000");
						evt.preventDefault();
					}
				}
				if(i===1){//current input max lon hon min value and input max nho hon current min value
					if(parseInt(priceValue)-parseInt(parseData(inputPrice[0].value))>0 && parseInt((priceValue+char))-
						parseInt(parseData(inputPrice[0].value))<0){
						evt.preventDefault();
					}

				}
				if((priceValue+char)>maxPrice){
					evt.preventDefault();
				}

			});
			price.addEventListener("input",()=>{
				price.value = parseShow(parseData(price.value));
			});
			price.addEventListener("change",(event)=>{
				price.value = parseShow(parseData(price.value));
				if (price.value === "") { price.value=0}
				if(event.target.className ==="max-price"&& price.value<=inputPrice[0].value){
					price.value= parseShow(parseInt(parseData(inputPrice[0].value)) + 1000000);
					console.log("max-price must greater than min-price");
				}
				let minValue = parseInt(parseData(inputPrice[0].value))/1000;
				let maxValue = parseInt(parseData(inputPrice[1].value))/1000;
				rangeInput[0].value = minValue ;
				rangeInput[1].value = maxValue;
				progress.style.left=""+((minValue/rangeInput[1].max)*100)+"%";
				progress.style.right = ""+100-((maxValue/rangeInput[1].max)*100)+ "%";
			});
		});
	// range input
		priceFilter.querySelectorAll('.double-range input').forEach(i=>{
			i.addEventListener("input",(event)=>{
				let minValue = rangeInput[0].value;
				let maxValue = rangeInput[1].value;
				if(maxValue - minValue <=priceGap){
					if(event.target.className === "min-range") {
						rangeInput[0].value = maxValue-priceGap;	
					}else{
						rangeInput[1].value = parseInt(rangeInput[0].value)+parseInt(priceGap);
					}
				}else{
					inputPrice[0].value = parseShow(minValue*1000);
					inputPrice[1].value = parseShow(maxValue*1000);
					progress.style.left=""+((minValue/rangeInput[1].max)*100)+"%";
					progress.style.right = ""+100-((maxValue/rangeInput[1].max)*100)+ "%";
				}				
			});		
		});	
 	});