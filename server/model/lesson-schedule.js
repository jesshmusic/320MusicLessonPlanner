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
    if (jsObject.date.getDate !== undefined) {
        this.date = jsObject.date;
    } else {
        this.date = new Date(jsObject.date);
        // this.date = new Date(jsObject.date);
    }
    // this.date = jsObject.date;
    this.lessonTime = null
    if (jsObject.lessonTime!==undefined && jsObject.lessonTime!=null){
        if (jsObject.lessonTime.getTime!==undefined){
            this.lessonTime = jsObject.lessonTime;
        } else {
            this.lessonTime = new Date(jsObject.lessonTime);
        }
    }
    this.lessonLength = jsObject.lessonLength;
    this.notes = "Select Edit Lesson Notes to create notes for this lesson.";
    if (jsObject.notes !== undefined) {
        this.notes = jsObject.notes;
    }
    this.lsid = null;
    if (jsObject.lsid !== undefined) {
        this.lsid = jsObject.lsid;
    }
    this.sid = null;
    if (jsObject.sid !== undefined) {
        this.sid = jsObject.sid;
    }
};

function validateInput(scheduleData) {
    var undef = scheduleData.date !== undefined && scheduleData.lessonTime !== undefined && scheduleData.lessonLength !== undefined && scheduleData.notes !== undefined;
    return undef;
}

/*
 * Save lesson schedule.
 */

LessonSchedule.prototype.save = function(studentRecord, callback) {
    var self = this;
    var myErr = null;
    var db = dbConnector.getInstance();

    if (validateInput(self)) {
        var lschedule_query = "INSERT INTO Schedule (date, lessonTime, lessonLength, notes, sid) VALUES('{0}', '{1}', '{2}', '{3}', {4})"
            .format(
                self.date,
                self.lessonTime,
                self.lessonLength,
                self.notes,
                studentRecord.sid);
        var get_query = "SELECT * FROM Schedule WHERE Schedule.date='{0}' AND Schedule.lessonTime='{1}' AND Schedule.lessonLength='{2}' AND Schedule.sid={3}"
            .format(
                self.date,
                self.lessonTime,
                self.lessonLength,
                studentRecord.sid);

        // console.log(lschedule_query);
        // console.log(get_query);

        db.run(lschedule_query, function(err) {
        }).get(get_query, function(err, row) {
            if (err != null || row == null) {
                // console.log(err);
                callback(err, null);
            } else {
                var _lessonSchedule = new LessonSchedule(row);
                _lessonSchedule.lsid = row.lsid;
                self.lsid = row.lsid;
                callback(null, _lessonSchedule);
            }
        });
    } else {
        callback({
            error: "Lesson Schedule Invalid Input"
        }, null);
    }
};

/*
 * Update lesson schedule.
 * Note: only updates fields. Not ID.
 *
 * @param {Date} lessonTime
 * @param {Date} lessonLength
 */


LessonSchedule.prototype.update = function(callback) {
    //TODO: update lesson schedule in DB
    var db = dbConnector.getInstance();
    var self = this;
    var query = "UPDATE Schedule SET date='{0}', lessonTime='{1}', lessonLength='{2}', notes='{3}' WHERE lsid={4}"
        .format(self.date, self.lessonTime, self.lessonLength, self.notes, self.lsid);
    db.run(query, function(err) {
        if (err != null) {
            console.log(err, null);
            callback(err);
        } else {
            callback(null, new LessonSchedule(self));
        }
    });

};


module.exports = LessonSchedule;

// STATIC FUNCTIONS //

/*
 * Get one the lesson note.
 */
module.exports.get = function(lsid, callback) {
    //TODO: get lesson note
    var db = dbConnector.getInstance();
    db.get("SELECT * From Schedule WHERE Schedule.lsid={0}".format(lsid), function(err, row) {
        if (err != null || row == null) {
            if (row!=null) console.log(err);
            callback(err, null);
        } else {
            var schedule = new LessonSchedule(row);
            callback(null, schedule);
        }
    })
};

/*
 * Get a list of lesson schedules.
 *
 * @param {Text} email
 * @param {Function} callback
 */
module.exports.list = function(sid, callback) { /// option = {callback: function(err, schedules), db: db}
    var db = dbConnector.getInstance();
    // console.log("DB LIST");
    db.all("SELECT * FROM Schedule WHERE Schedule.sid={0}".format(sid), function(err, rows) {
        if (err != null || rows == null) {
            console.log(err);
            callback(err, null);
        } else {
            // console.log(rows);
            callback(null, rows);
        }
    });
};

/*
 * Delete current instance of lesson schedule.
 */

module.exports.delete = function(lsid, callback) {
    var db = dbConnector.getInstance();
    var lschedule_query = "DELETE FROM Schedule WHERE Schedule.lsid={0}".format(lsid);
    db.exec(lschedule_query, function(err) {
        if (err != null) {
            console.log(err);
            callback(err);
        } else {
            callback(null);
        }
    });
};



/*
 * Create a new schedule.
 * Note: only updates fields. Not ID.
 *
 * @param {Object} jsObject
 * @param {Function} callback
 */

module.exports.create = function(jsObject, studentRecord, callback) {
    var newLSchedule = new LessonSchedule(jsObject);
    newLSchedule.save(studentRecord, callback);

};


module.exports.generateDates = function(scheduleObj, studentRecord, callback) {
    var db = dbConnector.getInstance();
    var error = null;
    var schedules = []
    var scheduleData = new LessonSchedule(scheduleObj);
    var numberOfLessons = scheduleObj.numberOfLessons;
    if (validateInput(scheduleData)) {
        var get_query = "SELECT * FROM Schedule WHERE Schedule.sid={0}"
            .format(studentRecord.sid);
        db.serialize(function() {
            var nextDate = new Date(scheduleData.date);
            for (var i = 0; i < numberOfLessons; i++) {
                if (i != 0) {
                    nextDate.setDate(nextDate.getDate() + 7);
                }
                var outputDate = nextDate.toISOString();
                // console.log(scheduleData);
                var lschedule_query = "INSERT INTO Schedule (date, lessonTime, lessonLength, notes, sid) VALUES('{0}', '{1}', '{2}', '{3}', {4})"
                    .format(
                        // scheduleData.date.toISOString(),
                        outputDate,
                        scheduleData.lessonTime,
                        scheduleData.lessonLength,
                        scheduleData.notes,
                        studentRecord.sid);
                // console.log(lschedule_query);
                // console.log(get_query);
                db.run(lschedule_query, function(err) {
                    if (err != null) {
                        console.log(err);
                    }
                })
            }
            db.all(get_query, function(err, schedules) {
                if (err != null || schedules == null) {
                    console.log(err);
                    callback(err, null);
                } else {
                    callback(null, schedules);
                }
            });
        });
    }
}

