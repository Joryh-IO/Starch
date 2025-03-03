var seatlist = [];
function sendseats(){
	
	for(i=0; i<seatlist.length; i++){
		const chair = {   

            name: seatlist[i],
            type: "Standard",
            availability: "Available",
            createdDate: "2023-10-01T12:00:00Z",
            updatedDate: "2023-10-01T12:00:00Z",
            showTime:{"stid":11} ,
            userid: 1
        }

        fetch('http://localhost:8085/popcorn/api/seatsapi/postSeat', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(chair)
        })
        .then(response => {
            if (response.ok) {
                return response.text();
            } else {
                throw new Error('Error: ' + response.statusText);
            }
        })
        .then(data => {
            console.log(data); 
        })
        .catch(error => {
            console.error('Error:', error);
        });
	}
}



document.addEventListener("DOMContentLoaded", function() {

var c =0;
var a;
var perticket = 120;
var gst = 0.03;

//send seat info to database
function seatapi(){
	
	for(i=0; i<seatlist.length; i++){
		var te = new Object();
		te.sid = seatlist[i];
		te.type = "standard";
		te.availability = "pending";
		te.uid = 1;
		console.log(JSON.stringify(te));
	}
}

document.getElementsByTagName("td")[13].innerText = gst;



// Add event listener to the button
document.getElementById("proceedButton").addEventListener("click", function() {
    // Call the sendseats function
    sendseats();

    // Redirect to the login page after sendseats() completes
    window.location.href = 'payment';
});



function update(x){
	document.querySelector("#p").innerHTML = x;
	document.getElementsByTagName("td")[11].innerText = x*perticket;
	document.getElementsByTagName("td")[15].innerText = Math.round((gst*x*perticket)*x*perticket);
	document.getElementsByTagName("td")[3].innerText = seatlist;
}


//click function
function seatpress(event){
	
	var curseat = event.target.id;
    a = window.getComputedStyle(event.target).backgroundColor;
    if(a === "rgb(230, 230, 230)"){
		seatlist.push(curseat);
        event.target.style.backgroundColor = " #51ebad";
        c = c+1;
        update(c);
    }
    else{
		seatlist.pop(curseat);
        event.target.style.backgroundColor = "rgb(230, 230, 230)";
        c = c-1;
        if(c<0){
            c = 0
        }
       update(c);
    }
    
    
};


// funciton to create grid

function creategrid(x){
	var gridAr = x.split(",");
	// console.log(gridAr);

	for(i=0;i<gridAr.length;i++){
        console.log(gridAr.length)
	    var temp = gridAr[i].split("-");
	    var num = Number(temp[0]);
	    var name = temp[1];
        console.log(num+" and "+name);
		
		const rowDiv = document.createElement("div");
		rowDiv.className = "r";
		const p = document.createElement("p");
		p.innerText = name;
		rowDiv.appendChild(p);
		
	    for(j=1; j<=num; j++){
			const chairDiv = document.createElement("div");
			chairDiv.className = "chair";
			chairDiv.onclick = () => seatpress(event);
			chairDiv.id = name+j;
			rowDiv.appendChild(chairDiv);
		}
		document.getElementsByClassName("seats")[0].appendChild(rowDiv);
	}
}



//API to call seating arrangements
callApi();

function callApi(){
	var id = document.getElementsByTagName("h3")[0].id;
	console.log(id);
	const url = `http://localhost:8085/popcorn/api/showtimes/fromId?id=${id}`;
	
	var req = {
			method:'GET',
			headers:{'Content-Type': 'application/json'}
		}
		fetch(url, req).then(response=>{
				if (!response.ok) {
				                throw new Error(`ERROR BRO: ${response.status}`);
				            }
				            return response.json();
			})
			.then(data => {
			            //console.log(data.theater.gridData);
						creategrid(data.theater.gridData);
			        })
}







function block(x){
	for(i=0;i<x.length;i++){
		var div = document.getElementById(x[i].name);
		console.log(div);
		div.onclick = null;
		div.style.backgroundColor = "grey";
	}
}

bookedseatsapi()
//function to call for booked seats

function bookedseatsapi(){
	var id = document.getElementsByTagName("h3")[0].id;
	const url = `http://localhost:8085/popcorn/api/seatsapi/seatsbystid?id=${id}`;
	
	var req = {
			method:'GET',
			headers:{'Content-Type': 'application/json'}
		}
		fetch(url, req).then(response=>{
				if (!response.ok) {
				                throw new Error(`ERROR BRO: ${response.status}`);
				            }
				            return response.json();
			})
			.then(data => {
			            console.log(data);
						block(data);
						//creategrid(data.theater.gridData);
			        })
					
				
}









})
