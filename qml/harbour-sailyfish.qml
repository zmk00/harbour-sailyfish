import QtQuick          2.0
import QtQuick.Controls 1.2

ApplicationWindow{
    id: appWindow

    visible: true
    width:   540
    height:  960

    property string appName: "Saily Fish"
    property string appVers: "0.6-3 beta"

    property bool reset:          false
    property bool resetHighscore: false

    StackView{
        id: pageStack

        initialItem: Qt.resolvedUrl("qrc:/qml/GamePage.qml")
    }
}
