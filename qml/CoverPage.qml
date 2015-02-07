import QtQuick         2.0
import Sailfish.Silica 1.0

CoverBackground{
    id: page

    Storage{
        id: storage
    }

    CoverActionList{

        enabled: !jump.running

        CoverAction{

            iconSource: "image://theme/icon-cover-play"
            onTriggered: {

                label.opacity = 0
                jump.restart()
            }
        }
    }

    ParallelAnimation{
        id: jump

        property int duration: 3500

        onRunningChanged:{

            if (!running){
                storage.setSetting("cover", storage.getSetting("cover") +1)

            }
        }

        //Player rotation, start at (9.8*2.74) *-1
        SequentialAnimation{

            PropertyAnimation{

                target:   player
                property: "rotation"
                from:     (9.8*2.74) *-1
                to:       (9.8*2.74) *1

                duration: (jump.duration /2).toFixed(0)
            }

            PropertyAnimation{

                target:   player
                property: "rotation"
                from:     (9.8*2.74) *1
                to:       (9.8*2.74) *-1

                duration: (jump.duration /2).toFixed(0)
            }
        }

        //Player y, start at (page.height /2) + (page.height /7)
        SequentialAnimation{

            PropertyAnimation{

                target:   player
                property: "y"
                from:     (page.height /2) + (page.height /10)
                to:       (page.height /2) - (page.height /10)

                duration: (jump.duration /3).toFixed(0)
            }

            PropertyAnimation{

                target:   player
                property: "y"
                from:     (page.height /2) - (page.height /10)
                to:       (page.height /2) + ((page.height /10) *2)

                duration: (jump.duration /3).toFixed(0)
            }

            ParallelAnimation{

                PropertyAnimation{

                    target:   player
                    property: "y"
                    from:     (page.height /2) + ((page.height /10) *2)
                    to:       (page.height /2) + (page.height /10)

                    duration: (jump.duration /3).toFixed(0)
                }

                PropertyAnimation{

                    target:   label
                    property: "opacity"
                    from:     0
                    to:       1

                    duration: (jump.duration /3).toFixed(0)
                }
            }
        }

        SequentialAnimation{

            PropertyAnimation{

                target:   item
                property: "x"
                from:     (page.width /2) + (item.width /5)
                to:       0 - item.width

                duration: ((jump.duration /2) + 110).toFixed(0)
            }

            PropertyAnimation{

                target:   item
                property: "x"
                from:     page.width
                to:       (page.width /2) + (item.width /5)

                duration: ((jump.duration /2) - 110).toFixed(0)
            }
        }
    }

    Label{
        id: label

        text: appName + "\n" + appVers

        font.bold:           true
        horizontalAlignment: Text.AlignHCenter
        rotation:            -14
        color:               Theme.highlightColor
        z:                   1000

        x: Theme.paddingSmall
        y: (page.height /2) - (height +5)
    }


    Item{
        id: player

        width:  childrenRect.width
        height: childrenRect.height

        y: (page.height /2) + (page.height /10)
        x: page.width /5

        rotation: (9.8*2.74) *-1

        Rectangle{
            id: highlightColor

            color:   Theme.highlightColor
            visible: false
        }
        Rectangle{
            id: secondaryHighlightColor

            color:   Theme.secondaryHighlightColor
            visible: false
        }

        Triangle{
            id: body

            height: 50
            width:  66.6666665

            color:          highlightColor.color
            onColorChanged: requestPaint()
        }

        Triangle{
            id: tail

            width:  (body.height / 4) *3
            height: width
            z:      body.z -1

            color:          secondaryHighlightColor.color
            onColorChanged: requestPaint()

            anchors{

                verticalCenter: body.verticalCenter
                left:           body.left
                leftMargin:     (width /3) *-1
            }
        }

        Triangle{
            id: wing

            width:  (body.height /5) *2
            height: width

            color:          secondaryHighlightColor.color
            onColorChanged: requestPaint()

            rotation: 180

            anchors{

                verticalCenter: body.verticalCenter
                left:           body.left
                leftMargin:     width /10
            }
        }

        Rectangle{

            width:  body.height /3
            height: width
            radius: width

            color: Theme.primaryColor

            border.color: Theme.highlightColor
            border.width: 3

            antialiasing: true
            smooth:       true

            anchors{

                bottom:           body.verticalCenter
                bottomMargin:     (width /4) *-1
                left:             body.horizontalCenter
                leftMargin:       (width /3) *-1
            }

            Rectangle{

                width:  6
                height: width
                radius: width

                color: Theme.secondaryHighlightColor

                anchors.centerIn: parent

                antialiasing: true
                smooth:       true
            }
        }
    }


    //Pipe
    Item{
        id: item

        height: childrenRect.height
        width:  childrenRect.width

        x: (page.width /2) + (width /5)
        y: page.height /2

        Item{

            width:  childrenRect.width
            height: childrenRect.height

            y: (60 + childrenRect.height) *-1

            Column{

                spacing: 0

                Rectangle{

                    color:  Theme.secondaryHighlightColor
                    width:  page.width /5
                    height: page.height

                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle{

                    color:  Theme.secondaryHighlightColor
                    width:  (page.width /5) + (height)//*2)
                    height: 20

                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        Item{

            width:  childrenRect.width
            height: childrenRect.height

            y: 60

            Column{

                spacing: 0

                Rectangle{

                    color:  Theme.secondaryHighlightColor
                    width:  (page.width /5) + (height)// *2)
                    height: 20

                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Rectangle{

                    color: Theme.secondaryHighlightColor
                    width: page.width /5
                    height: page.height

                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }
}
