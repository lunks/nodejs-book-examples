http = require "http"

server = http.createServer (request, response) ->
  response.writeHead 200, {"Content-Type": "text/html"}
  response.write "Hello World!"
  response.end()

server.listen 8888
