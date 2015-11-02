TEMPLATE = lib
CONFIG += qt plugin hide_symbols
QT += qml
QT -= gui

TARGET = qmlgeonamesplugin
INSTALLS += target qmldir

target.path = /usr/share/harbour-daybreak/lib

qmldir.path +=  /usr/share/harbour-daybreak/harbour/daybreak/GeoNames
qmldir.files = qmldir

CONFIG(release, debug|release) {
    DEFINES += QT_NO_DEBUG_OUTPUT
}

SOURCES += gnplugin.cpp

#HEADERS += gnplugin.h \

OTHER_FILES += \
    qmldir \
    qmlplugin.json
