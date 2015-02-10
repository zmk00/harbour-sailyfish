import QtQuick          2.0
import QtQuick.Controls 1.3
import "qrc:/qml/"

Rectangle{
    id: menu

    Theme{
        id: theme
    }

    x: 0
    y: show ? 0 : 0-height
    z: 10000

    Behavior on y{

        SmoothedAnimation{
            duration: 6000
        }
    }

    width:  parent.width
    height: theme.paddingMedium *5

    color: theme.highlightBackgroundColor
    clip:  true //avoid icons to stick out during transitions

    //Avoid start by missing the button
    MouseArea{

        anchors.fill: menu
    }

    Label{
        id: menuLabel

        anchors{

            verticalCenter: parent.verticalCenter
            left:           button.right
            leftMargin:     theme.paddingLarge
        }

        text:           back ? "Back" : appName+" | "+appVers
        color:          theme.secondaryColor
        font.pixelSize: theme.fontSizeMedium
    }

    MouseArea{
        id: button

        height: menu.height
        width:  height

        onClicked: back ? pageStack.pop() : pageStack.push(Qt.resolvedUrl("qrc:/qml/statsPage.qml"))

        Column{
            id: column

            anchors{
                horizontalCenter: button.horizontalCenter
                verticalCenter:   button.verticalCenter

                horizontalCenterOffset: button.pressed ? 0-(button.width /3) : 0
            }

            Behavior on anchors.horizontalCenterOffset{

                SmoothedAnimation{

                    duration: 600
                }
            }

            spacing:          button.height /10

            Rectangle{

                height: column.spacing
                width:  button.height - (theme.paddingSmall *2)
                radius: height /2

                color:   button.pressed ? theme.secondaryColor : theme.primaryColor
                visible: !back
            }

            Rectangle{

                height: column.spacing
                width:  button.height - (theme.paddingSmall *2)
                radius: height /2

                color:   button.pressed ? theme.secondaryColor : theme.primaryColor
                visible: !back
            }

            Rectangle{

                height: column.spacing
                width:  button.height - (theme.paddingSmall *2)
                radius: height /2

                color:   button.pressed ? theme.secondaryColor : theme.primaryColor
                visible: !back
            }

            Triangle{

                height:   (button.height /3) *2
                width:    height
                rotation: 180

                color:   button.pressed ? theme.secondaryColor : theme.primaryColor
                visible: back
            }
        }
    }
}
