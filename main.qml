import QtQuick 2.4
import QtQuick.Controls 1.3

import "qrc:/./"

ApplicationWindow{

    visible: true
    width:   540
    height:  960

    title: appName+" | "+appVers
    property string appName: "Saily Fish"
    property string appVers: "0.6-3 beta"

    //Global helpers
    property bool reset:          false
    property bool resetHighscore: false

    GamePage{
        id: game
    }
}
