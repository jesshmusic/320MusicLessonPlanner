SQLite format 3   @                                                                     -�         �
                                                                                                                                                 �Y�tableScheduleScheduleCREATE TABLE Schedule(lsid INTEGER PRIMARY KEY AUTOINCREMENT, date DATE, lessonTime DATETIME, lessonLength INTEGER, sid INTEGER references SRecord(sid) on delete cascade on update cascade)��tableSRecordSRecordCREATE TABLE SRecord(sid INTEGER PRIMARY KEY AUTOINCREMENT, tid INTEGER references Teacher(sid) on delete cascade on update cascade, email TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT, birthday DATE, instrument TEXT, generalNotes TEXT)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)�+�-tableTeacherTeacherCREATE TABLE Teacher(tid INTEGER PRIMARY KEY AUTOINCREMENT, tEmail TEXT, passowrd TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              SRecorSRecordSchedule   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          j 	1![ nsimsiri@umass.eduNatchaaSimsiri123 HOuse4138015807Sat Aug 07 1993 20:00:00 GMT-0400 (EDT)Piano   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            !2015-08-085:00:00                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  D  D �D^:                                                  �+�-tableTeacherTeacherCREATE TABLE Teacher(tid INTEGER PRIMARY KEY AUTOINCREMENT, tEmail TEXT, passowrd TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)��tableSRecordSRecordCREATE TABLE SRecord(sid INTEGER PRIMARY KEY AUTOINCREMENT, tid INTEGER references Teacher(sid) on delete cascade on update cascade, email TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT, birthday DATE, instrument TEXT, generalNotes TEXT)�Y�tableScheduleScheduleCREATE TABLE Schedule(lsid INTEGER PRIMARY KEY AUTOINCREMENT, date DATE, lessonTime DATETIME, lessonLength INTEGER, sid INTEGER references SRecord(sid) on delete cascade on update cascade)�C%%�ItableLessonRecordLessonRecordCREATE TABLE LessonRecord(lrid INTEGER PRIMARY KEY AUTOINCREMENT, date DATE, notes TEXT, sid TEXT references SRecord(sid) on delete cascade on update cascade)