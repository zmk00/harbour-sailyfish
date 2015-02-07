import QtQuick 2.0
import Sailfish.Silica 1.0

Page{
    id: page

    property double angle: 0
    property double max:   29.4

    Timer{
        interval: 60
        repeat:   true
        running:  true

        onTriggered:{

            if(mouse.pressed){

                if(mouse.mouseY < page.height /2 && angle > max *-1)
                    angle -= max /50
                else if (angle < max)
                    angle += max /50

                //collisionTest(body)
            }
        }
    }

    property double x0
    property double y0
    property double x1
    property double y1
    property double x2
    property double y2

    property double l
    property double r
    property double b
    property double t

    function collisionTest(body){

        x0 = (player.x + body.x) -2
        y0 = body.mapToItem(null).y -2//(player.y + (body.y)) -2

        x1 = (player.x + (body.x + body.width)) -2
        y1 = (body.mapToItem(null).y + (body.height /2)) -2//(player.y + (body.y + (body.height /2))) -2

        x2 = (player.x + body.x) -2
        y2 = (body.mapToItem(null).y + body.height) -2

        point0.x = x0
        point0.y = y0
        point1.x = x1
        point1.y = y1
        point2.x = x2
        point2.y = y2
    }

//    Rectangle{
//        id: point0

//        color:"red"
//        width: 5
//        height: 5
//        z: 1000
//    }

//    Rectangle{
//        id: point1
//        color: "red"
//        width: 5
//        height: 5
//        z: 1000
//    }

//    Rectangle{
//        id: point2
//        color: "red"
//        width: 5
//        height: 5
//        z: 1000
//    }

    Rectangle{
        color: "red"
        opacity: 0.25
        z: -1000

        x:        player.x + tail.anchors.leftMargin
        y:        player.y
        width:    player.width
        height:   player.height
        rotation: player.rotation
    }

    MouseArea{
        id: mouse
        anchors.fill: parent

        onPressed:{
            console.log(body.mapToItem(null).y)
        }
    }

    Rectangle{
        color: "red"

    }

    Item{
        id: player

        anchors.centerIn: parent

        width:  childrenRect.width
        height: childrenRect.height

        rotation: angle

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

        Rectangle{
            id: point0

            color: "red"
            z: 1000
            width: 5
            height: width; radius: width

            anchors.verticalCenter:   body.top
            anchors.horizontalCenter: body.left
        }

        Rectangle{
            id: point1

            color: "red"
            z: 1000
            width: 5
            height: width; radius: width

            anchors.verticalCenter:   body.verticalCenter
            anchors.horizontalCenter: body.right
        }

        Rectangle{
            id: point2

            color: "red"
            z: 1000
            width: 5
            height: width; radius: width

            anchors.verticalCenter:   body.bottom
            anchors.horizontalCenter: body.left
        }

        Triangle{
            id: body

            height: 60
            width: 80

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

            width:  body.height /3
            height: width

            color:          secondaryHighlightColor.color
            onColorChanged: requestPaint()

            rotation: 180

            anchors{

                verticalCenter: body.verticalCenter
                left:           body.left
                leftMargin:     width /2
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
                leftMargin:       (width /4) *-1
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
}
