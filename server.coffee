http = require "http"
url = require "url"
start = (route) ->
  onRequest = (request, response) ->
    pathname = url.parse(request.url).pathname
    console.log "Request for "+ pathname + "received."

    route(pathname)

    response.writeHead 200, {"Content-Type": "text/html"}
    response.write "Hello World!"
    response.end()

  http.createServer(onRequest).listen(8888)
  console.log "Server has started."

exports.start = start
