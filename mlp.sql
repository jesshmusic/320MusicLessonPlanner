SQLite format 3   @     �                                                               � -�    � ba �                                                                      �"%%�tableLessonRecordLessonRecordCREATE TABLE LessonRecord(lrid INTEGER PRIMARY KEY AUTOINCREMENT, date DATE, notes TEXT, sid INTEGER references SRecord(sid))�6�?tableScheduleScheduleCREATE TABLE Schedule(schid INTEGER PRIMARY KEY AUTOINCREMENT, date DATE, lessonTime DATETIME, lessonLength INTEGER, sid INTEGER references SRecord(sid))�s�=tableSRecordSRecordCREATE TABLE SRecord(sid INTEGER PRIMARY KEY AUTOINCREMENT, tid INTEGER references Teacher(tid), email TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT, birthday DATE, instrument TEXT, generalNotes TEXT)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)��tableTeacherTeacherCREATE TABLE Teacher(tid INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Schedule#SRecord)� � ��I�R1�D                                                                                                                                                                                                                                                                                                                                                               U 	;-)S 	;-) music@jesshendricks.comJessHendricks281 State Street(615) 943-8578GuitarL 	+-% email@email.comChristaHendricks281c 	;-)9 musicQ 	;-) music@jesshe#! 	= 2015-03-26T04:00:00.U) 	;-) music@jesshendricks.comJessHendricks281 State Street(615) 943-8578Mandolin7 	)% bela@email.comBelaBartokNYC555-555-5555Piano   	;-)Z& 	;R( 	9-% jess@fupduckonline.comJessHendricks281 State Street555-555-5555Mandolinj$ 	;-)= music@jesshendricks.comJessHendricks281 State Street(615) 943-85781972-12-05T05:00:00.000ZPianoI 	%-% ch@email.comChristaHendricks281 State Street555-555-5555Violin� � �������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            # 	) =	2015-03-24T04:00:00.000Z$ 	 	   	" (                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              