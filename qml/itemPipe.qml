import QtQuick          2.0
import QtQuick.Controls 1.2
import "qrc:/qml/"

Item{
    id: item

    height: childrenRect.height
    width:  childrenRect.width

    x: page.width
    y: page.height /2

    Theme{
        id: theme
    }

    Component.onCompleted:{

        x = page.width
        animation.duration = gameSpeed *100
        animation.restart()
    }

    Item{

        width:  childrenRect.width
        height: childrenRect.height

        y: (100 + childrenRect.height) *-1

        Column{

            spacing: 0

            Rectangle{

                color: theme.secondaryHighlightColor
                width: page.width /5
                height: page.height

                anchors.horizontalCenter: parent.horizontalCenter
            }
            Rectangle{

                color:  theme.secondaryHighlightColor
                width:  (page.width /5) + (height *2)
                height: 20

                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    Item{

        width:  childrenRect.width
        height: childrenRect.height

        y: 100

        Column{

            spacing: 0

            Rectangle{

                color:  theme.secondaryHighlightColor
                width:  (page.width /5) + (height *2)
                height: 20

                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle{

                color: theme.secondaryHighlightColor
                width: page.width /5
                height: page.height

                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }

    NumberAnimation{
        id: animation

        target:   item
        property: "x"
        from:     page.width
        to:       0 - item.width
        duration: 6000

        property bool isPaused: page.paused
        onIsPausedChanged:{

            if (isPaused)
                pause()
            else
                resume()
        }

        onRunningChanged:{

            if(running == false && item.x === 0 - item.width){

                item.destroy()

                if (alive){

                    newPipes()
                    settingDistance += page.width
                }
            }
        }
    }
}
