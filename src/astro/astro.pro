TEMPLATE = lib
CONFIG += qt plugin hide_symbols
QT += qml
QT -= gui

TARGET = qmlastroplugin
INSTALLS += target qmldir

target.path = /usr/share/harbour-daybreak/lib

qmldir.path +=  /usr/share/harbour-daybreak/harbour/daybreak/Astro
qmldir.files = qmldir

CONFIG(release, debug|release) {
    DEFINES += QT_NO_DEBUG_OUTPUT
}

DEPENDPATH += . ../AstroCpp
INCLUDEPATH += . ../AstroCpp

#LIBS += -lAstroCpp -L../AstroCpp

SOURCES += astroplugin.cpp \
    dbastro.cpp

OTHER_FILES += \
    qmldir \
    qmlplugin.json

HEADERS += \
    dbastro.h \
    ../logging.h
