import QtQuick          2.0
import QtQuick.Controls 1.3
import "qrc:/qml/"

Page{
    id: statPage

    Component.onDestruction: anchors.centerIn = undefined //to get rid of "../Silica/Page.qml:134: TypeError: Cannot read property of null"

    Theme{
        id: theme
    }

    Storage{
        id: storage
    }

//    property bool appActive: appWindow.applicationActive
//    onAppActiveChanged: if (!appActive) scoreCover = storage.getSetting("cover")

    property int  scoreHigh
    property int  scoreTotal
    property real scoreAverage
    property int  scoreCover

    property int  statJumps
    property int  statTime
    property int  statRestarts
    property int  statBubbles
    property real statDistance
    property int  statBest

    Component.onCompleted: updateStats()

    function updateStats(){

        //Database
        scoreHigh    = storage.getSetting("highscore")
        scoreTotal   = storage.getSetting("total")
        scoreCover   = storage.getSetting("cover")
        statJumps    = storage.getSetting("jumps")
        statRestarts = storage.getSetting("restarts")
        statBubbles  = storage.getSetting("bubbles")
        statBest     = storage.getSetting("best")

        statTime     = storage.getSetting("time")
        if (statTime > 0)
            statTime = statTime / 1000

        statDistance = storage.getSetting("distance") //screen is 55 mm and 540 pixels
        if (statDistance > 0)
            statDistance  = (statDistance *(55 /540)) /10 //to cm

        //Extras
        if (statRestarts > 0)
            scoreAverage = scoreTotal / statRestarts
        else
            scoreAverage = 0

        reset = !reset
    }

    Flickable{

        anchors.fill: parent

        contentHeight: (mainCol.y + mainCol.height) + theme.paddingLarge

//        VerticalScrollDecorator{}
//
//        PullDownMenu{
//
//            visible: statPage.backNavigation
//
//            MenuItem{
//
//                text:      "Reset all stats"
//                onClicked:{
//
//                    statPage.backNavigation = false
//                    remorseItem.execute(remorseHolder, "Resetting stats")
//                }
//            }
//        }

//        Item{
//            id: remorseHolder
//
//            width:  parent.width
//            height: theme.itemSizeLarge
//        }

//        PageHeader{
//            id: head
//
//            title: "Stats"
//        }
//
//        RemorseItem{
//            id: remorseItem
//
//            onCanceled: statPage.backNavigation = true
//
//            onTriggered:{
//
//                storage.setSetting("highscore", 0)
//                storage.setSetting("jumps",     0)
//                storage.setSetting("time",      0)
//                storage.setSetting("distance",  0)
//                storage.setSetting("restarts",  0)
//                storage.setSetting("total",     0)
//                storage.setSetting("bubbles",   0)
//                storage.setSetting("best",      0)
//                storage.setSetting("cover",     0)
//
//                resetHighscore = !resetHighscore
//                updateStats()
//
//                statPage.backNavigation = true
//            }
//        }

        TopMenu{
            id: head

            property bool show: true
            property bool back: true
        }

        Column{
            id: mainCol

            anchors.top:              head.bottom
            anchors.topMargin:        theme.paddingLarge
            anchors.horizontalCenter: parent.horizontalCenter
            width:                    parent.width - theme.paddingLarge *2

            Column{

                spacing: 0

                Label{

                    text: "Score"

                    color:          theme.highlightColor
                    font.pixelSize: theme.fontSizeLarge
                }

                Row{

                    spacing: theme.paddingLarge

                    Column{

                        Label{
                            id: heightHelper

                            text: scoreHigh

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text:{

                                if (scoreAverage == 0)
                                    return 0

                                if (scoreAverage > 5)
                                    return Math.round(scoreAverage)
                                else
                                    return scoreAverage.toFixed(2)
                            }

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text: scoreTotal

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }

                    Column{

                        width: statPage.width - (parent.spacing + Math.ceil(parent.children[0].width) + parent.parent.parent.x + theme.paddingLarge)

                        Label{

                            text: "Highscore"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{

                            text: "Average"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{

                            text: "Total"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }
                    }
                }

                //spacing
                Item{

                    height: theme.paddingLarge; width: 1
                }

                Label{

                    text: "Primary"

                    color:          theme.highlightColor
                    font.pixelSize: theme.fontSizeLarge
                }

                Row{

                    spacing: theme.paddingLarge

                    Column{

                        Label{

                            text: statJumps

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text: statBubbles

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text: statRestarts

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text:{

                                if (statTime >= 120)
                                    return (statTime / 60).toFixed(2)
                                else if (statTime >= 3600)
                                    return ((statTime / 60) /60).toFixed(2)
                                else
                                    return statTime
                            }

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text:{

                                if (statDistance == 0)
                                    return 0

                                if (statDistance >= 100)
                                    return (statDistance /100).toFixed(2)
                                else
                                    return statDistance.toFixed(1)
                            }

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text: statBest != null ? statBest : 0

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }

                    Column{

                        width: statPage.width - (parent.spacing + Math.ceil(parent.children[0].width) + parent.parent.parent.x + theme.paddingLarge)

                        Label{

                            text: "Jumps"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{

                            text: "Bubbles popped"

                            color: theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{

                            text: "Restarts"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{

                            text: statTime >= 120 ? "Minutes played" : "Seconds played"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{

                            text: statDistance >= 100 ? "Distance traveled in meters" : "Distance traveled in cm"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{

                            text: "Best run (bubbles + score)"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }
                    }
                }

                //spacing
                Item{

                    height: theme.paddingLarge; width: 1
                }


                Label{

                    text: "Secondary"

                    color:          theme.highlightColor
                    font.pixelSize: theme.fontSizeLarge
                }

                Row{

                    spacing: theme.paddingLarge

                    Column{

                        Label{

                            text: statTime > 0 ? (statJumps / (statTime / 60)).toFixed(1) : 0

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text: statBubbles > 0 ? (statBubbles / (statTime /60)).toFixed(2) : 0

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text: statBubbles > 0 ? (scoreTotal > 0 ? (statBubbles /scoreTotal).toFixed(2) : 0) : 0

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }


                        Label{

                            text: statRestarts > 0 ? (statTime / statRestarts).toFixed(1) : 0

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }

                        Label{

                            text: scoreCover > 0 ? scoreCover : 0

                            color:          theme.primaryColor
                            font.pixelSize: theme.fontSizeLarge

                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }

                    Column{

                        width: statPage.width - (parent.spacing + Math.ceil(parent.children[0].width) + parent.parent.parent.x + theme.paddingLarge)

                        Label{

                            text: "Jumps per minute"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{

                            text: "Bubbles popped per minute"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{

                            text: "Bubbles per score"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.WrapAnywhere
                        }

                        Label{
                            id: lblAvg

                            text: "Average lifetime in seconds"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.Wrap
                        }

                        Label{

                            text: "Cover score"

                            color:          theme.secondaryColor
                            font.pixelSize: theme.fontSizeMedium

                            height:            heightHelper.height
                            verticalAlignment: Text.AlignVCenter

                            width:    parent.width
                            wrapMode: Text.Wrap
                        }
                    }
                }
            }
        }
    }
}
