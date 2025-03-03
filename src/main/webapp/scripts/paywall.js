//API to call seat info
callApi();

function callApi(){
	var id = document.getElementsByTagName("h4")[0].id;
	console.log(id);
	const url = `http://localhost:8085/popcorn/api/seatsapi/seatsbyukserid?id=${id}`;
	
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
			            //console.log(data);
						var seatlist = [];
							for(i=0;i<data.length;i++){
								seatlist.push(data[i].name);
							}
							document.getElementsByTagName("td")[3].innerHTML = seatlist;
							document.getElementsByTagName("td")[1].innerHTML = seatlist.length;
			        })
}

function done(){
	var uid = document.getElementsByTagName("h4")[0].id;
	var stid = document.getElementsByTagName("button")[3].id;
	console.log(stid);
		const url = `http://localhost:8085/popcorn/api/seatsapi/done?uid=${uid}&stid=${stid}`;
		
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
							
				        })
						
						window.alert("Seats are Booked!!");
}