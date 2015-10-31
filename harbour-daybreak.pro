TEMPLATE = subdirs
SUBDIRS = src

ICONPATH = /usr/share/icons/hicolor

86.png.path = $${ICONPATH}/86x86/apps/
86.png.files += data/86x86/harbour-daybreak.png

108.png.path = $${ICONPATH}/108x108/apps/
108.png.files += data/108x108/harbour-daybreak.png

128.png.path = $${ICONPATH}/128x128/apps/
128.png.files += data/128x128/harbour-daybreak.png

256.png.path = $${ICONPATH}/256x256/apps/
256.png.files += data/256x256/harbour-daybreak.png

daybreak.desktop.path = /usr/share/applications/
daybreak.desktop.files = data/harbour-daybreak.desktop

OTHER_FILES += rpm/harbour-daybreak.spec \
               data/harbour-daybreak.desktop \
               data/86x86/harbour-daybreak.png \
               data/108x108/harbour-daybreak.png \
               data/128x128/harbour-daybreak.png \
               data/256x256/harbour-daybreak.png

INSTALLS = daybreak.desktop \
           86.png 108.png 128.png 256.png
