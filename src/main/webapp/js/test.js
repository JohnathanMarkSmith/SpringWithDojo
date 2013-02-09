/**
	Javascript functions for the Welfare Inquiry application
 * 
 */


function doAjaxPost() {  
	  // get the form values and serialize it so you can sent it to the server  
	
	  alert('Hello');
	  
	   var queryString = $('#customer').serialize();

	   $('#error').hide('fast'); 
	  
	  $.ajax({  
	    type: "POST",  
	    url: contexPath + "/WebFlowTemplate/dropdown",  
	    data: queryString,  
	    success: function(response)
	    {
	    	      
	    },  
	    error: function(e)
	    {  
	      alert('Error: ' + e);  
	    }  
	  });  
	}  