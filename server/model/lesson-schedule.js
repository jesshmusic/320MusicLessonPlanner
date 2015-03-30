// TBD: Eliminate need for lesson-note.js by adding an additional field to the creation
// of this class that is a string of lesson notes (initialized to the empty string and
// able to be updated later on if wanted)

/**
 * Instantiates a new lesson-schedule.
 * 
 * @param {Date} date
 * @param {Date} startTime
 * @param {int} lessonLength
 * @param {int} sid
 */
var format = require('string-format');

var dbConnector = require('../../database/dbinit.js');
if (dbConnector == null) console.log("DATABASE CON NULL");

var LessonSchedule = function(jsObject) {
    this.date = null;
    if (jsObject.date.getDate !== undefined){
        this.date = jsObject.date;
    } else {
        this.date = new Date(jsObject.date);
    }
    this.lessonTime = jsObject.lessonTime;
    this.lessonLength = jsObject.lessonLength;
    this.lsid = null;
};

/*
 * Save lesson schedule.
 */

LessonSchedule.prototype.save = function(studentRecord, callback) {
    var self = this;
    var myErr = null;
    var db = dbConnector.getInstance();
  
    console.log("DB SAVE");

    var lschedule_query = "INSERT INTO Schedule (date, lessonTime, lessonLength, sid) VALUES('{0}', '{1}', '{2}', {3})"
        .format(
            self.date,
            self.lessonTime,
            self.lessonLength,
            studentRecord.sid);
    var get_query = "SELECT * FROM Schedule WHERE Schedule.date='{0}' AND Schedule.lessonTime='{1}' AND Schedule.lessonLength='{2}' AND Schedule.sid={3}"
        .format(
            self.date,
            self.lessonTime,
            self.lessonLength,
            studentRecord.sid);

    console.log(lschedule_query);
    console.log(get_query);

    db.run(lschedule_query, function(err) {
        if (err != null) {
            console.log("SCHEDULE SAVE TO DB ERR");
            console.log(err);
            // callback(err, null); don't neeed may be redundant
        } 
    }).get(get_query, function(err, row){
        if (err!=null || row==null){
            console.log(err);
            callback(err, null);
        } else {
            console.log(row);
            var _lessonSchedule = new LessonSchedule(row);
            _lessonSchedule.lsid = row.lsid;
            callback(null, _lessonSchedule);
        }
    });
};

module.exports = LessonSchedule;

// STATIC FUNCTIONS //

/*
 * Get one the lesson note.
 */
module.exports.get = function(sid, callback) {
    //TODO: get lesson note
    return this;
};

/*
 * Get a list of lesson schedules.
 *
 * @param {Text} email
 * @param {Function} callback
 */
module.exports.list = function(sid, callback){ /// option = {callback: function(err, schedules), db: db}
	var db = dbConnector.getInstance();

	console.log("DB LIST");
	db.all("SELECT * FROM Schedule WHERE Schedule.sid={0}".format(sid), function(err, rows) {
        if (err!= null || rows == null){
            console.log(err);
            callback(err, null);
        } else {
            console.log(rows);
    		callback(null, rows);
        }
	});
};

/*
 * Delete current instance of lesson schedule.
 */

module.exports.delete = function(studentRecord, callback) {
    var db = dbConnector.getInstance();
        var lschedule_query = "DELETE FROM Schedule WHERE Schedule.schid={0}".format(schid);
    console.log(lschedule_query);
    db.exec(lschedule_query, function(err) {
        if (err != null) {
            console.log(err);
            callback(err);
        }
    });
};

/*
 * Update lesson schedule.
 * Note: only updates fields. Not ID.
 *
 * @param {Date} lessonTime
 * @param {Date} lessonLength
 * @param {Text} email
 */

module.exports.update = function(lessonTime, lessonLength, email) {
    //TODO: update lesson schedule in DB
};

/*
 * Create a new schedule.
 * Note: only updates fields. Not ID.
 *
 * @param {Object} jsObject
 * @param {Function} callback
 */

module.exports.create = function(jsObject, studentRecord, callback) {
    console.log("CREATE");
    var newLSchedule = new LessonSchedule(jsObject);
    newLSchedule.save(studentRecord, callback);


};

module.exports.generateDates = function(scheduleData, studentRecord, callback){
    var db = dbConnector.getInstance();
    var error = null;
    var schedules = []
     db.serialize(function(){
        console.log("SERIALIZD");
        console.log(scheduleData);
        for (var i = 0; i < scheduleData.numberOfLessons; i++){
           scheduleData.date.setDate(scheduleData.date.getDate()+7*i);
            // console.log("Creating lesson schedule" + lessonScheduleJsObject.date.toString());
            var lschedule_query = "INSERT INTO Schedule (date, lessonTime, lessonLength, sid) VALUES('{0}', '{1}', '{2}', {3})"
                                    .format(
                                        scheduleData.date,
                                        scheduleData.lessonTime,
                                        scheduleData.lessonLength,
                                        studentRecord.sid);
            var get_query = "SELECT * FROM Schedule WHERE Schedule.sid={0}"
                                    .format(
                                        studentRecord.sid);
            // console.log(lschedule_query);
            // console.log(get_query);
            db.run(lschedule_query, function(err){
                if (err!=null){
                    console.log(err);
                }
            })
        }
        db.all(get_query, function(err, schedules){
            if (err!=null || schedules == null){
                console.log(err);
                callback(err, null);
            } else{
                console.log("200 -------- RETREIVED SCHEDULE LIST");
                callback(null, schedules);
            }
        });
    });
}
