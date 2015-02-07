import QtQuick         2.0
import Sailfish.Silica 1.0

Page{
    id: page

    Component.onDestruction: anchors.centerIn = undefined //to get rid of "../Silica/Page.qml:134: TypeError: Cannot read property of null"

    SilicaFlickable{

        anchors.fill: parent

        contentHeight: parent.height

        PageHeader{
            id: head

            title: "About"
        }

        Column{
            id: col

            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top:              head.bottom
            spacing:                  Theme.paddingLarge
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
                    color:          Theme.highlightColor
                    font.pixelSize: Theme.fontSizeLarge

                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Label{

                    text:           appVers
                    color:          Theme.secondaryHighlightColor
                    font.pixelSize: Theme.fontSizeMedium

                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Label{

                text:                "Sorry for the delayed update. I had it almost ready when the temptation to get the opt-in update got too strong. The faster rendering in Qt 5.2 messed up with the way I'm currently handeling movement.\nThe new velocity isn't prefectly the same as it was before as I had no way of debugging on update 9, but I think it's close enough."
                width:               page.width - (Theme.paddingLarge *2)
                color:               Theme.secondaryColor
                wrapMode:            Text.Wrap
                font.pixelSize:      Theme.fontSizeSmall
                horizontalAlignment: Text.AlignHCenter

                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label{

                text:                "I am currently looking for somewhere to store an online highscore table. If you do have some resources over at your server, or know of any free services, please get in touch. A sql table would do just fine."
                width:               page.width - (Theme.paddingLarge *2)
                color:               Theme.primaryColor
                wrapMode:            Text.Wrap
                font.pixelSize:      Theme.fontSizeSmall
                horizontalAlignment: Text.AlignHCenter

                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Column{
            id: author

            anchors.bottom:       parent.bottom
            anchors.bottomMargin: Theme.paddingMedium

            width:   parent.width
            height:  childrenRect.height
            spacing: -5

            Label{

                text:           "Created by Felix Woxström"
                color:          Theme.highlightColor
                font.pixelSize: Theme.fontSizeMedium

                anchors.right:       parent.right
                anchors.rightMargin: Theme.paddingMedium
            }
            Label{

                text:           "fwoxstrom@gmail.com"
                color:          Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeSmall

                anchors.right:       parent.right
                anchors.rightMargin: Theme.paddingMedium
            }
        }
    }
}
