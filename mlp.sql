SQLite format 3   @     A                                                               A -�   �    	�73                                                                                                                                                                                              ��tableSRecordSRecordCREATE TABLE SRecord(sid INTEGER PRIMARY KEY AUTOINCREMENT, tid INTEGER references Teacher(tid) on delete cascade on update cascade, email TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT, birthday DATE, instrument TEXT, generalNotes TEXT)��tableTeacherTeacherCREATE TABLE Teacher(tid INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)�<�OtableAccountAccountCREATE TABLE Account(id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password TEXT, tid INTEGER references Teacher(sid) on delete cascade on update cas      � �Z�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        N #�mat@zen.com$2a$10$MUMy7CbQ1Yt1Wx4/5ZpLaucf6y80E4f1QeoohXwEt1WoAf60536BGP '�bob@gmail.com$2a$10$8Y3o1NYR25wf9QVFOmQYSep9zkUfZYWtiE324nTB7wycEdp8UPjfOU 1�Hendriks@gmail.com$2a$10$3AcOY7Q3jf9opAqsj6A9HeBvlyWLEpwtfe4scSAcZdP9FQ6wsEuGuM #�	admin@g.com$2a$10$UMECkEEZgT3r0953TJ4Tgu6h3U7cqAYVY9Q8hGQ2GZqBrmPy7eRfK   � ����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 TeachTeacherSchedule'SRecordAccount   � ����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       #mat@zen.comMatt 'bob@gmail.comBob 1Hendriks@gmail.comJess #admin@g.comnatcha   �    � �                                                                                                                                                                                     �E 	!#[�Mef@fj.comawefawefawef12fwf1f12f12312412412Thu Mar 19 2015 00:00:00 GMT-0400 (EDT)awefaewfThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.�8 	![�Mndf@kf.comOoooijoasdf234235355Thu Mar 19 2015 00:00:00 GMT-0400 (EDT)iooiojoThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.�[ 	'E%[�Maw4f@f4ef.comasdfawfewfaaw34fawfsdf 13131ff f3f fedf123234124124Thu Mar 12 2015 00:00:00 GMT-0400 (EDT)a4wfaw4fThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.�W 	1M[�Mnsimsiri@umass.edunatchasimsiri7/410 chaiyapruek, Taweewtana 24Thu Mar 19 2015 00:00:00 GMT-0400 (EDT)PianoThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will       �    ��k�u# �  -             P [=!Fri Mar 27 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.615Z60 minutesP [=!Fri Mar 20 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.615Z60 minutesP
 [=!Mon Jun 01 2015 00:00:00 GMT-0400 (EDT)2015-03-30T08:55:00.897Z60 minutesP	 [=!Mon May 04 2015 00:00:00 GMT-0400 (EDT)2015-03-30T08:55:00.897Z60 minutesP [=!Mon Apr 13 2015 00:00:00 GMT-0400 (EDT)2015-03-30T08:55:00.897Z60 minutesP [=!Mon Mar 30 2015 00:00:00 GMT-0400 (EDT)2015-03-30T08:55:00.897Z60 minutesP [=!Mon Mar 23 2015 00:00:00 GMT-0400 (EDT)2015-03-30T08:55:00.897Z60 minutesO [=!	Thu Jun 04 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.963Z60 minutesO [=!	Thu May 07 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.963Z60 minutesO [=!	Thu Apr 16 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.963Z60 minutesO [=!	Thu Apr 02 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.963Z60 minutesO [=!	Thu Mar 26 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.963Z   #   
   7 7�H�$ W                                                                    �<�OtableAccountAccountCREATE TABLE Account(id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password TEXT, tid INTEGER references Teacher(sid) on delete cascade on update cascade)P++Ytablesqlite_sequences�<�OtableAccountAccountCREATE TABLE Account(id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password TEXT, tid INTEGER references Teacher(sid) on delete cascade on update cascade)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)��tableTeacherTeacherCREATE TABLE Teacher(tid INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT)��tableSRecordSRecordCREATE TABLE SRecord(sid INTEGER PRIMARY KEY AUTOINCREMENT, tid INTEGER references Teacher(tid) on delete cascade on update cascade, email TEXT, firstName TEXT, lastName TEXT, address TEXT, phone TEXT, birthday DATE, instrument TEXT, generalNotes TEXT)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ^ ^:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �Y�tableScheduleScheduleCREATE TABLE Schedule(lsid INTEGER PRIMARY KEY AUTOINCREMENT, date DATE, lessonTime DATETIME, lessonLength INTEGER, sid INTEGER references SRecord(sid) on delete cascade on update cascade)�C%%�ItableLessonRecordLessonRecordCREATE TABLE LessonRecord(lrid INTEGER PRIMARY KEY AUTOINCREMENT, date DATE, notes TEXT, sid TEXT references SRecord(sid) on delete cascade on update cascade)    ,  , } �p�f�
\�            O [=!	Thu Apr 02 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.963Z60 minutesO [=!	Thu Apr 16 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.963Z60 minutesO [=!	Thu May 07 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.963Z60 minutesO [=!	Thu Jun 04 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.963Z60 minutesP [=!Wed Mar 18 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.344Z60 minutesP [=!Wed Mar 25 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.344Z60 minutesP [=!Wed Apr 08 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.344Z60 minutesP [=!Wed Apr 29 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.344Z60 minutesP [=!Wed May 27 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.344Z60 minutesP [=!Thu Mar 19 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.849Z60 minutesP [=!Thu Mar 26 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.849Z60 minutesP [=!Thu Apr 09 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.849Z60 minutes    +  �p�f�
\� } +        PP# [=!Wed Mar 18 2015 00:00:00 GMT-0400 (EDT)2015-03-30T13:00:00.417Z60 minutesM" [;	Thu Apr 02 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.9635 minutesP [=!Thu Apr 30 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.849Z60 minutesP [=!Thu May 28 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.849Z60 minutesP [=!Fri Mar 20 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.786Z60 minutesP [=!Fri Mar 27 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.786Z60 minutesP [=!Fri Apr 10 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.786Z60 minutesP [=!Fri May 01 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.786Z60 minutesP [=!Fri May 29 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.786Z60 minutesP [=!Thu Mar 05 2015 00:00:00 GMT-0500 (EST)2015-03-30T09:00:00.993Z60 minutesP  [=!Thu Mar 12 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.993Z60 minutesP! [=!Thu Mar 26 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.993Z60 minutes�  � & � � �                                                                                                                                                                                     �E 	!#[�Mef@fj.comawefawefawef12fwf1f12f12312412412Thu Mar 19 2015 00:00:00 GMT-0400 (EDT)awefaewfThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.  � 	![�Mndf@kf.comOoooijoasdf234235355Thu Mar 19 2015 00:00:00 GMT-0400 (EDT)iooiojoThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.   � 	'E%[�Maw4f@f4ef.comasdfawfewfaaw34fawfsdf 13131ff f3f fedf123234124124Thu Mar 12 2015 00:00:00 GMT-0400 (EDT)a4wfaw4fThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.�W 	1M[�Mnsimsiri@umass.edunatchasimsiri7/410 chaiyapruek, Taweewtana 24Thu Mar 19 2015 00:00:00 GMT-0400 (EDT)PianoThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.    � ?�� �                                                                                                                                                                                                                               �^ 	1=%[�M09fid09f90@ldl.comUOUOUUOOOKKKKK0i3493i0fjd i0fj301fij0j309013092039Sat Mar 14 2015 00:00:00 GMT-0400 (EDT)of9df0dThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.�3 [�MasdfasdasdfasdfaefaewfaefaefSat Mar 28 2015 00:00:00 GMT-0400 (EDT)asdThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.�6 [�MasdfaasdfasfeawefawefawefawefSat Mar 28 2015 00:00:00 GMT-0400 (EDT)eafefThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.�> 	)[�Masdfasdfaefawf33134f3faw3f3f23f23fWed Mar 18 2015 00:00:00 GMT-0400 (EDT)asefaefaeThis is where notes on student progress should be placed. <b>Hopefully</b> formatting will work.   � �\
�f�p                                                                                                                                                                                                                                                                    P! [=!Thu Mar 26 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.993Z60 minutesP  [=!Thu Mar 12 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.993Z60 minutesP [=!Thu Mar 05 2015 00:00:00 GMT-0500 (EST)2015-03-30T09:00:00.993Z60 minutesP [=!Fri May 29 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.786Z60 minutesP [=!Fri May 01 2015 00:00:00 GMT-0400 (EDT)2015-03-30T09:00:00.786Z60 minutesP' [=!Wed Apr 15 2015 00:00:00 GMT-0400 (EDT)2015-03-30T13:00:00.417Z60 minutesP& [=!Wed Apr 08 2015 00:00:00 GMT-0400 (EDT)2015-03-30T13:00:00.417Z60 minutesP% [=!Wed Apr 01 2015 00:00:00 GMT-0400 (EDT)2015-03-30T13:00:00.417Z60 minutesP$ [=!Wed Mar 25 2015 00:00:00 GMT-0400 (EDT)2015-03-30T13:00:00.417Z60 minutes