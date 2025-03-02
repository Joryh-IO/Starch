document.addEventListener("DOMContentLoaded", function() {

var c =0;
var a;
var perticket = 120;
var gst = 0.03;
var seatlist = [];

var grid = "5-A,5-B,3-C,9-D,9-E,9-F,9-G";
document.getElementsByTagName("td")[13].innerText = gst;
creategrid(grid);

function update(x){
	document.querySelector("#p").innerHTML = x;
	document.getElementsByTagName("td")[11].innerText = x*perticket;
	document.getElementsByTagName("td")[15].innerText = Math.round((gst*x*perticket)*x*perticket);
	document.getElementsByTagName("td")[3].innerText = seatlist;
}

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











})
