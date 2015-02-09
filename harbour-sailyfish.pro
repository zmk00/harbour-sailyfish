# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = harbour-sailyfish

CONFIG += sailfishapp

SOURCES += src/harbour-sailyfish.cpp

OTHER_FILES += qml/harbour-sailyfish.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    rpm/harbour-sailyfish.changes.in \
    rpm/harbour-sailyfish.spec \
    rpm/harbour-sailyfish.yaml \
    translations/*.ts \
    harbour-sailyfish.desktop \
    qml/Triangles.qml \
    qml/Triangle.qml \
    qml/Storage.qml \
    qml/statsPage.qml \
    qml/itemPipe.qml \
    qml/itemBubble.qml \
    qml/harbour-sailyfish.qml \
    qml/GamePage.qml \
    qml/CoverPage.qml \
    qml/aboutPage.qml \
    qml/cover/CoverPage.qml \
    qml/Triangles.qml \
    qml/Triangle.qml \
    qml/Storage.qml \
    qml/statsPage.qml \
    qml/itemPipe.qml \
    qml/itemBubble.qml \
    qml/harbour-sailyfish.qml \
    qml/GamePage.qml \
    qml/CoverPage.qml \
    qml/aboutPage.qml \
    qml/Triangles.qml \
    qml/Triangle.qml \
    qml/Storage.qml \
    qml/statsPage.qml \
    qml/itemPipe.qml \
    qml/itemBubble.qml \
    qml/harbour-sailyfish.qml \
    qml/GamePage.qml \
    qml/CoverPage.qml \
    qml/aboutPage.qml \
    rpm/harbour-sailyfish.spec

# to disable building translations every time, comment out the
# following CONFIG line
#CONFIG += sailfishapp_i18n
#TRANSLATIONS += translations/harbour-sailyfish-de.ts

