
TEMPLATE = lib
TARGET = AstroCpp
INCLUDEPATH += .

#LIBS += -lmath

# Input
HEADERS += AstroOps.h \
           ConfigFile.h \
           DateOps.h \
           Lunar.h \
           LunarTerms.h \
           MathOps.h \
           PlanetData.h \
           Pluto.h \
           PlutoTerms.h \
           RiseSet.h \
           VisLimit.h \
           Vsop.h
SOURCES += AstroOps.cpp \
           ConfigFile.cpp \
           DateOps.cpp \
           DateOpsIntl.cpp \
           Lunar.cpp \
           MathOps.cpp \
           PlanetData.cpp \
           Pluto.cpp \
           RiseSet.cpp \
           test.cpp \
           VisLimit.cpp \
           Vsop.cpp \
           VsopData.cpp
