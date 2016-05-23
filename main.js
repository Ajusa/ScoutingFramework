var express = require('express');
var app = express();
var fs = require('fs');
var bodyParser = require('body-parser');
var cors = require('cors')
var moment = require('moment');
var j2xls = require('json2xls-xml')({ pretty: true });
var address, os = require('os'),
    ifaces = os.networkInterfaces();
var portNum = 80;
var data = [];
var serverStore;
var fileName = moment().format("M;D;YYYY;H;mm;ss");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));
app.use(cors());
app.use('/', express.static(__dirname + '/www'));
fs.writeFile(fileName + ".xlsx", j2xls(data), 'binary', function(err) {
    error(err);
});
fs.writeFile(fileName + "lead.xlsx", j2xls(data), 'binary', function(err) {
    error(err);
});
app.post('/', function(req, res) {

    data.push(req.body);
    console.log(req.body)
    fs.writeFile(fileName + ".xlsx", j2xls(data), 'binary', function(err) {
        error(err);
    });
    res.sendStatus(200);
});
app.post('/lead', function(req, res) {
    lead.push(req.body);
    fs.writeFile(fileName + "lead.xlsx", j2xls(lead), 'binary', function(err) {
        error(err);
    });
    res.sendStatus(200)
});
app.get('/api', function(req, res) {
    res.send("<pre>" + JSON.stringify(data, null, 4) + "</pre>");
});
serverStopper = app.listen(portNum, function() {});
for (var dev in ifaces) {
    var iface = ifaces[dev].filter(function(details) {
        return details.family === 'IPv4' && details.internal === false;
    });
    if (iface.length > 0) address = iface[0].address;
}
console.log(address)

function error(err) {
    if (err) {
        return console.log(err);
    }
}
