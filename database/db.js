var db = require(dbinit.js);

function insertStudent(sid, fname, lname){
    var inStudent = db.prepare("INSERT INTO StuTable(?,?,?)");
    inStudent.run(sid, fname,lname);
    inStudent.finalize();   
}

function studentList(tid){
    SELECT * FROM StuTable WHERE 
}

/*
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
*/
