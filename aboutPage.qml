import QtQuick          2.0
import QtQuick.Controls 1.2

Page{
    id: page

    Component.onDestruction: anchors.centerIn = undefined //to get rid of "../Silica/Page.qml:134: TypeError: Cannot read property of null"

    Flickable{

        anchors.fill: parent

        contentHeight: parent.height

        Column{
            id: col

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top:              head.bottom
            spacing:                  21
            height:                   childrenRect.height
            width:                    parent.width

            Image{

                source:                   "/usr/share/icons/hicolor/86x86/apps/harbour-sailyfish.png"
                anchors.horizontalCenter: parent.horizontalCenter
                smooth:                   true
            }

            Column{

                spacing:                  0
                anchors.horizontalCenter: parent.horizontalCenter

                Label{

                    text:           appName
                    color:          "red"
                    font.pixelSize: 24

                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Label{

                    text:           appVers
                    color:          "orange"
                    font.pixelSize: 18

                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Label{

                text:                "Sorry for the delayed update. I had it almost ready when the temptation to get the opt-in update got too strong. The faster rendering in Qt 5.2 messed up with the way I'm currently handeling movement.\nThe new velocity isn't prefectly the same as it was before as I had no way of debugging on update 9, but I think it's close enough."
                width:               page.width - (21 *2)
                color:               "gray"
                wrapMode:            Text.Wrap
                font.pixelSize:      12
                horizontalAlignment: Text.AlignHCenter

                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label{

                text:                "I am currently looking for somewhere to store an online highscore table. If you do have some resources over at your server, or know of any free services, please get in touch. A sql table would do just fine."
                width:               page.width - (21 *2)
                color:               "white"
                wrapMode:            Text.Wrap
                font.pixelSize:      12
                horizontalAlignment: Text.AlignHCenter

                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Column{
            id: author

            anchors.bottom:       parent.bottom
            anchors.bottomMargin: 14

            width:   parent.width
            height:  childrenRect.height
            spacing: -5

            Label{

                text:           "Created by Felix Woxström"
                color:          "red"
                font.pixelSize: 18

                anchors.right:       parent.right
                anchors.rightMargin: 14
            }
            Label{

                text:           "fwoxstrom@gmail.com"
                color:          "orange"
                font.pixelSize: 12

                anchors.right:       parent.right
                anchors.rightMargin: 14
            }
        }
    }
}
