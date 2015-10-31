INSTALLS += target
target.path = /usr/bin/

CONFIG += sailfishapp

CONFIG(release, debug|release) {
    DEFINES += QT_NO_DEBUG_OUTPUT
}

TARGET = harbour-daybreak
TEMPLATE = app

SOURCES += harbour-daybreak.cpp
