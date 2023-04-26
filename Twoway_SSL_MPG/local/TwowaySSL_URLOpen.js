var urlopen = require('urlopen');

var options = {
            target: 'https://172.17.10.135:7019/',
            method: 'get',
           contentType: 'application/json',
		   sslClientProfile: 'Twoway_SSL_Cprofile',
           };

urlopen.open(options, function(error, response) {
  if (error) {
   
    session.output.write("urlopen error: "+JSON.stringify(error));
  } else {
    
    var responseStatusCode = response.statusCode;
    var responseReasonPhrase = response.reasonPhrase;
    console.log("Response status code: " + responseStatusCode);
    console.log("Response reason phrase: " + responseReasonPhrase);
   
    response.readAsBuffer(function(error, responseData){
      if (error){
        throw error ;
      } else {
        session.output.write(responseData) ;
      }
    });
  }
});