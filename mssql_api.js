var express = require('express');
var app = express();
var sql = require('mssql')

app.get('/', function (req, res) {
    var config = {
        user: 'yanhlau2',
        password: 'password',
        server: 'arcalaucsc.ddns.net',
        database: 'computer-science-challenge'
    };
    sql.connect(config, function (err) {
        if (err) console.log(err);
        var request = new sql.Request();
        request.query("INSERT INTO Statistic([userId],[chapter],[totalAttempt],[correctCount],[marks]) VALUES (\'" + req.query.userID + "\',\'" + req.query.chapter + "\'," + req.query.totalAttempt + "," + req.query.countCorrect + "," + req.query.marks + ")", function (err, recordset) {
            if (err) console.log(err)
            else {
                console.log('Inserted record into MSSQL!')
                res.send('Inserted record into MSSQL!')
            }
            sql.close()
        });
    })
});

var server = app.listen(5050, function () {
    console.log('Server is running..');
});