var http = require("http");
setInterval(function() {
    http.get("http://tibbs-2020.herokuapp.com/info");
    console.log('get')
}, 300000); // every 5 minutes (300000)
