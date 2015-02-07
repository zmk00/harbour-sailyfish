import QtQuick         2.0
import Sailfish.Silica 1.0

Rectangle {
    id: rect

    y: page.height

    color:  Theme.secondaryColor
    radius: width /2
    height: width

    function pop(){

        border.color = color
        border.width = width * 0.08

        popAnimation.start()
    }

    ParallelAnimation{
        id: popAnimation

        running: false

        property int dur: 256

        PropertyAnimation{

            target:   rect
            property: "color"
            to:       {

                var col = ""+rect.color
                return "#00"+col.replace("#", "")
            }

            easing.type: Easing.InOutQuad

            duration: popAnimation.dur
        }

        PropertyAnimation{

            target:   rect
            property: "border.color"
            to:       {

                var col = ""+rect.color
                return "#00"+col.replace("#", "")
            }


            easing.type: Easing.InQuart

            duration: popAnimation.dur
        }

        PropertyAnimation{

            target:   rect
            property: "border.width"
            to:       1

            easing.type: Easing.InCirc

            duration: popAnimation.dur
        }

        PropertyAnimation{

            target:   rect
            property: "width"
            to:       { return rect.width *0.1 }

            easing.type: Easing.InQuint

            duration: popAnimation.dur
        }
    }

    function setup(){

        numAnim.duration += (Math.round(Math.random() * 3000) - 1500)
        numAnim.to        = 0 - width

        propAnim.from = x
        propAnim.to   = x - ((width *8) * (Math.random() + 0.25))

        var pause         = (numAnim.duration /8) * Math.random()
        pausAnim.duration = pause
        propAnim.duration = numAnim.duration - pause

        parAnim.restart()
    }

    property bool isPaused: page.paused
    onIsPausedChanged:{

        if (isPaused){

            if (pausAnim.running)
                pausAnim.pause()
            else if (propAnim.running)
                propAnim.pause()

            parAnim.pause()
        }
        else{

            if (pausAnim.paused)
                pausAnim.resume()
            else if (propAnim.paused)
                propAnim.resume()

            parAnim.resume()
        }
    }

    ParallelAnimation{
        id: parAnim

        running: false

        SequentialAnimation{

            PauseAnimation{
                id: pausAnim
            }

            PropertyAnimation{
                id: propAnim

                target:   rect
                property: "x"

                easing.type: Easing.InQuad
            }
        }

        NumberAnimation{
            id: numAnim

            target:   rect
            property: "y"
            duration: 10000
        }

        onRunningChanged:{

            if (!running)
                rect.destroy()
        }
    }
}
