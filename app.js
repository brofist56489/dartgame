var app = require("http").createServer(handler);
var fs = require("fs");

app.listen(process.env.PORT || 8080);

function handler(req, res) {
	var path = req.url;
	if(path == "/") path = "/newgame.html";
	path = "/build/web" + path;
	console.log(path);

	fs.readFile(__dirname + path, function(err, data) {
		if(err) {
			res.writeHead(500);
			res.end("Could not get file: " + path);
		} else {
			res.writeHead(200);
			res.end(data);
		}
	});
}