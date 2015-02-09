import QtQuick          2.0
import QtQuick.Controls 1.2
import "qrc:/qml/"

Rectangle{

    Theme{
        id: theme
    }

    anchors.fill: parent

    color: theme.backgroundColor
}
