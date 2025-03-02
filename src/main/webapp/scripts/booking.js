document.addEventListener("DOMContentLoaded", function() {

var c =0;
var a;
var grid = "5-A,5-B,5-C,9-D,9-E,9-F,9-G";
creategrid(grid);

var seats = document.getElementsByClassName("seats")[0];

seats.innerHTML="";



function seatpress(event){
    a = window.getComputedStyle(event.target).backgroundColor;
    if(a === "rgb(230, 230, 230)"){
        event.target.style.backgroundColor = " #51ebad";
        c = c+1;
        document.querySelector("#p").innerHTML = c;
    }
    else{
        event.target.style.backgroundColor = "rgb(230, 230, 230)";
        c = c-1;
        if(c<0){
            c = 0
        }
        document.querySelector("#p").innerHTML = c;
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
			chairDiv.onclick = () => seatPress(alphabet);
			rowDiv.appendChild(chairDiv);
		}
		document.getElementsByClassName("seats")[0].appendChild(rowDiv);
	}
}

})

