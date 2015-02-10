import QtQuick          2.0
import QtQuick.Controls 1.2
import "qrc:/qml/"

Rectangle{

    Theme{
        id: theme
    }

    Label{

        text:           "Are you sure you want to exit?"
        color:          theme.primaryColor
        font.pixelSize: theme.fontSizeMedium
    }

    //Enable pagestack transitions (no anchors)
    width:  parent.width
    height: parent.height

    color: "#45000000"

    //Enable android backbutton
    focus: true
    Keys.onReleased:{

        if (event.key === Qt.Key_Back){

            pageStack.pop({immediate: true})
            event.accepted = true
        }
    }
}
