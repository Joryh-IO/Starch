const parent = document.getElementsByClassName("theatercont")[0];
const ORIGINAL = document.getElementById("stcontainer");
parent.innerHTML = '';

function callApi(id){
	const apiUrl = `http://localhost:8085/popcorn/api/showtimes/getspecific?id=${id}`;
	const apiData = {id : id}
	var data;
	var req = {
		method:'POST',
		headers:{'Content-Type': 'application/json'}
	}
	fetch(apiUrl, req).then(response=>{
		if (!response.ok) {
		                throw new Error(`HTTP error! Status: ${response.status}`);
		            }
		            // Parse the response as JSON
		            return response.json();
	})
	.then(data => {
	            // Log the response data to the console
	            console.log('Data received:', data);
				parent.innerHTML = '';
				for(i=0; i<data.length; i++){
					create(data[i],i);
					console.log(data[i]);
				}
	        })
			
			
	function create(x,i){
		
			const div = ORIGINAL;
			const newdiv = div.cloneNode(true);
			//newdiv.id = 5;
			newdiv.getElementsByTagName("p")[0].textContent= i+1;
			newdiv.getElementsByTagName("p")[1].textContent= x.theater.theaterName;
			newdiv.getElementsByTagName("p")[2].textContent= x.theater.city;
			newdiv.getElementsByTagName("p")[3].textContent= x.theater.address;
			newdiv.getElementsByTagName("p")[4].textContent= x.starttime;
			newdiv.getElementsByTagName("p")[5].textContent= x.endtime;
			newdiv.getElementsByTagName("p")[6].textContent= x.availableseats + " seats";
			newdiv.getElementsByTagName("button")[0].id = x.stid;
			
			parent.appendChild(newdiv);
			
	}
			
	
}

function booktheater(event) {

	var stid = event.target.id;
    
    const url = `/Popcorn/booking/${stid}/`;
    
    window.location.href = url;
}



