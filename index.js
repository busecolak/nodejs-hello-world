var http = require('http');

const message = 'Hello Hepsiburada from Buse Colak'
const port = process.env.PORT || 11130

var server = http.createServer(function (request, response) {

  response.writeHead(200, { 'Content-Type': 'text/plain' });
  response.end(message);

});

server.listen(port);

console.log('Server running at http://localhost:%d', port);