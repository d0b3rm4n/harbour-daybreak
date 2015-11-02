INSTALLS += target
target.path = /usr/bin/

QMAKE_LFLAGS += -Wl,-rpath,\\$${LITERAL_DOLLAR}$${LITERAL_DOLLAR}ORIGIN/../share/harbour-daybreak/lib

CONFIG += sailfishapp

CONFIG(release, debug|release) {
    DEFINES += QT_NO_DEBUG_OUTPUT
}

TARGET = harbour-daybreak
TEMPLATE = app

SOURCES += harbour-daybreak.cpp
