import QtQuick          2.0
import QtQuick.Controls 1.2
import "qrc:/qml/"

Rectangle{

    Theme{
        id: theme
    }

    //Enable pagestack transitions (no anchors)
    width:  parent.width
    height: parent.height

    color: theme.backgroundColor

    //Enable android backbutton
    focus: true
    Keys.onReleased:{

        if (event.key === Qt.Key_Back){

            if (pageStack.currentItem !== pageStack.initialItem)
                pageStack.pop()

            else
                pageStack.push({item: Qt.resolvedUrl("qrc:/qml/confirmExit.qml"), immediate: true})

            event.accepted = true
        }
    }
}
