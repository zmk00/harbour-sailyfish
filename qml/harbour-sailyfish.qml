import QtQuick         2.0
import Sailfish.Silica 1.0

ApplicationWindow{
    id: appWindow

    property string appName: "Saily Fish"
    property string appVers: "0.6-3 beta"

    property bool reset:          false
    property bool resetHighscore: false

    initialPage: Component { GamePage {} }
    cover:       Component { CoverPage{} }
}
