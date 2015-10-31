TEMPLATE = subdirs

main.subdir = main
main.target = main

astrocpp.subdir = AstroCpp
astrocpp.target = astrocpp

geonames.subdir = geonames
geonames.target = geonames

SUBDIRS = main astrocpp geonames

OTHER_FILES += qml/*.qml qml/*.js

qmlfiles.files = qml/*.qml qml/*.js
qmlfiles.path = /usr/share/harbour-daybreak/qml
INSTALLS += qmlfiles
