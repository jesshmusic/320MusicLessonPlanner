function loadDB(path){

    var fs = require('fs');
    var SQL = require('sql.js');

    var fileBuffer = fs.readFileSync(path);
    var db = new SQL.Database(fileBuffer);
    return db;
}

function saveDB(path, db){

    var fs = require('fs');
    var SQL = require('sql.js');

    var data = db.export()
    var buffer = newBuffer(data);
    fs.writeFileSync(path, buffer);
}

function execute(command){
    return this.db.exec(command);
}

function getDBManager(path){
    var DBManager = {path: path, db: null, loadDB: loadDB, saveDB: saveDB, execute: execute};
    return DBManager;
}

var state = 0;
module.exports.openConnection = function(){
    state = 1;
}

module.exports.getInstance = function(){
    return state;
}
