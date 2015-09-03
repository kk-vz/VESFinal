$(document).ready(function() {
$("#searchbutton").click(function(){

var st=document.getElementById("search").value;

    var doughnutData = [
        {
            value : 50,
            color : "#E4E4E4"
			
        },
        {
            value : 50,
            color : "#E4E4E4"
			
        },
        {
            value : 50,
            color : "#E4E4E4"
	    },
    ];
	
	var doughnutData1 = [
        {
            value : 50,
            color : "#00E68A"
        },
        {
            value : 50,
            color : "#E4E4E4"
			
        },
        {
            value : 50,
            color : "#E4E4E4"
	    },
    ];

	var doughnutData2 = [
        {
            value : 50,
            color : "#00E68A"
        },
		{
            value : 50,
            color : "#00E68A"
        },
       
        {
            value : 50,
            color : "#E4E4E4"
	    },
    ];

	var doughnutData3 = [
        {
            value : 1,
            color : "#00E68A"
        },
		{
            value : 1,
            color : "#00E68A"
        },
		{
            value : 1,
            color : "#00E68A"
        },
        
    ];

	var doughnutData4 = [
	                     {
	                         value : 50,
	                         color : "#FF0066"
	             			
	                     },
	                     {
	                         value : 50,
	                         color : "#FF0066"
	             			
	                     },
	                     {
	                         value : 50,
	                         color : "#FF0066"
	             	    },
	                 ];

	                switch(st)
	                {
	             	   case "0":
	             	       new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData);
	             		break;
	             		case "1":
	             	       new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData1);
	             		break;
	             		case "2":
	             	       new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData2);
	             		break;
	             		case "3":
	             	       new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData3);
	             		break;
	             		case "4":
	             	       new Chart(document.getElementById("doughnut").getContext("2d")).Doughnut(doughnutData4);
	             		break;
	             		default:exit(0);
	             		break;
	             	   
	                }
 
   

});
});