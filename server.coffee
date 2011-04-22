http = require "http"
start = ->
  onRequest = (request, response) ->
    console.log "Request received."
    response.writeHead 200, {"Content-Type": "text/html"}
    response.write "Hello World!"
    response.end()

  http.createServer(onRequest).listen(8888)
  console.log "Server has started."

exports.start = start
