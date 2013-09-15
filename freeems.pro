######################################################################
# Automatically generated by qmake (2.01a) Sat Feb 16 17:37:58 2013
######################################################################

TEMPLATE = lib

DEPENDPATH += .
INCLUDEPATH += . ../../core/src
CONFIG += plugin
QT -= gui
INCLUDEPATH += $$PWD/../../lib/core
DEPENDPATH += $$PWD/../../lib/core
win32-x-g++ { #Linux based crossplatform 32bit build
	TARGET = ../../../core/plugins/freeemsplugin
	win32:QMAKE_LFLAGS += -shared
	message("Building for win32-x-g++")
	INCLUDEPATH += /home/michael/QtWin32/libs/qwt/include /home/michael/QtWin32/libs/qjson/include
	LIBS += -L/home/michael/QtWin32/libs/qwt/lib -lqwt -L/home/michael/QtWin32/libs/qjson/lib -lqjson
	LIBS += -L/home/michael/QtWin32/lib
	DEFINES += GIT_COMMIT=$$system(git describe --dirty=-DEV --always)
	DEFINES += GIT_HASH=$$system(git log -n 1 --pretty=format:%H)
        QMAKE_LFLAGS += -static-libgcc -static-libstdc++
} else:win64-x-g++ { #Linux based crossplatform 64bit build
	TARGET = ../../../core/plugins/freeemsplugin
	win32:QMAKE_LFLAGS += -shared
	message("Building for win64-x-g++")
	INCLUDEPATH += /home/michael/QtWin64/libs/qwt/include /home/michael/QtWin64/libs/qjson/include
	LIBS += -L/home/michael/QtWin64/libs/qwt/lib -lqwt -L/home/michael/QtWin64/libs/qjson/lib -lqjson
	LIBS += -L/home/michael/QtWin64/lib
	DEFINES += GIT_COMMIT=$$system(git describe --dirty=-DEV --always)
	DEFINES += GIT_HASH=$$system(git log -n 1 --pretty=format:%H)
        QMAKE_LFLAGS += -static-libgcc -static-libstdc++
} else:win32 { #Windows based mingw build
	TARGET = ../../../core/plugins/freeemsplugin
	win32:QMAKE_LFLAGS += -shared
	message("Building for win32-g++")
	INCLUDEPATH += C:/libs/qwt/include C:/libs/qjson/include
	LIBS += -LC:/libs/qwt/lib -lqwt -LC:/libs/qjson/lib -lqjson0
	DEFINES += GIT_COMMIT=$$system(\"c:/program files (x86)/git/bin/git.exe\" describe --dirty=-DEV --always)
	DEFINES += GIT_HASH=$$system(\"c:/program files (x86)/git/bin/git.exe\" log -n 1 --pretty=format:%H)
        QMAKE_LFLAGS += -static-libgcc -static-libstdc++
}
unix {
	TARGET = ../../core/plugins/freeemsplugin
	target.path = /usr/share/emstudio/plugins
	INSTALLS += target
}
# Input
HEADERS += datapacketdecoder.h \
           table2ddata.h \
           table3ddata.h \
           emscomms.h \
           memorymetadata.h \
	   fedatapacketdecoder.h \
           fetable2ddata.h \
           datafield.h \
           fetable3ddata.h \
           freeemscomms.h \
           serialport.h \
           serialrxthread.h \
	   fememorymetadata.h \
	   datafield.h

SOURCES += fedatapacketdecoder.cpp \
           fetable2ddata.cpp \
           fetable3ddata.cpp \
           freeemscomms.cpp \
           serialport.cpp \
           serialrxthread.cpp \
	   fememorymetadata.cpp \
	   datafield.cpp
