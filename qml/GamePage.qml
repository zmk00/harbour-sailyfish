import QtQuick          2.0
import QtQuick.Controls 1.2
import "qrc:/qml/"

Page{
    id: page

    Theme{
        id: theme
    }

    Component.onDestruction:{

        updateSettings()
    }

    property bool paused:    false
    //property bool appActive: applicationActive
    //onAppActiveChanged: if (!appActive && alive) paused = true

    property double velo:  0
    property double grav:  9.8
    property double maxV:  grav *2.74// grav *2.96 //3.0

    property bool   alive:     false
    property int    score:     0
    property int    jump:      maxV *-1
    property int    highscore: 0

    property bool newPipe:   true

    property int gameSpeed: 60 //60

    property int settingHighscore: 0
    property int settingTime:      0
    property int settingRestarts:  0
    property int settingJumps:     0
    property int settingTotal:     0
    property int settingDistance:  0
    property int settingBubbles:   0
    property int settingBest:      0

    property bool mainReset:          reset
    property bool mainResetHighscore: resetHighscore

    onMainResetChanged:{

        settingTime     = 0
        settingRestarts = 0
        settingJumps    = 0
        settingTotal    = 0
        settingDistance = 0
        settingBubbles  = 0
    }

    onMainResetHighscoreChanged:{

        labelHighscore.color = theme.secondaryColor
        highscore            = 0
    }

    onGameSpeedChanged:{

        gameTime.interval = gameSpeed
        gameTime.restart()
    }

    onScoreChanged:{

        newScore.restart()

        if (score > highscore){

            highscore = score
            labelHighscore.color = theme.highlightColor
            newHighscore.restart()
        }
    }

    onHighscoreChanged: settingHighscore = highscore

    Component.onCompleted:{

        storage.initalize()

        var got = storage.getSetting("highscore")
        if (got === null)
            got = 0

        highscore = got*1

        player.y = 0 - player.height
        player.x = (page.width  /2) - (player.width  /2)
    }

    function updateSettings(){

        storage.setSetting("highscore", settingHighscore)
        storage.setSetting("time",      storage.getSetting("time")     +settingTime)
        storage.setSetting("restarts",  storage.getSetting("restarts") +settingRestarts)
        storage.setSetting("jumps",     storage.getSetting("jumps")    +settingJumps)
        storage.setSetting("total",     storage.getSetting("total")    +settingTotal)
        storage.setSetting("distance",  storage.getSetting("distance") +settingDistance)
        storage.setSetting("bubbles",   storage.getSetting("bubbles")  +settingBubbles)

        settingTime     = 0
        settingRestarts = 0
        settingJumps    = 0
        settingTotal    = 0
        settingDistance = 0
        settingBubbles  = 0
    }

    function restart(){

        player.y = (page.height /2) - (player.height /2)
        player.x = (page.width  /2) - (player.width  /2)
        velo     = 0

        var i = 0
        do{

            var pipe = pipeHolder.children[i]

            if (pipe === undefined)
                break

            pipe.destroy()
            i += 1

        } while(true)

        score                = 0
        labelHighscore.color = labelScore.color
        alive                = true

        settingRestarts += 1

        newPipes()
    }

    function collisionCheck(){

        var pipe  = pipeHolder.children[0]
        var pipe1 = pipeHolder.children[0].children[1]
        var pipe2 = pipeHolder.children[0].children[2]

        var p0 = point0.mapToItem(null).y
        var p1 = point1.mapToItem(null).y
        var p2 = point2.mapToItem(null).y

        if (p0 < p1 && point0.mapToItem(null).x >= pipe.x){

            if (p0 <= (pipe.y + pipe1.y) + pipe1.height){

                gameOver()
                return
            }
        }

        else if(p1 <= (pipe.y + pipe1.y) + pipe1.height){

            gameOver()
            return
        }

        if (p2 > p1 && point2.mapToItem(null).x >= pipe.x){

            if (p2 >= pipe.y + pipe2.y){

                gameOver()
                return
            }
        }

        else if (p1 >= pipe.y + pipe2.y){

            gameOver()
            return
        }
    }

    function gameOver(){

        alive = false

        var duration          = (1500 * (player.y / page.height)) +1
        deadFishDown.duration = duration
        deadFishBack.duration = duration
        deadFish.restart()

        settingTotal += score

        var best = settingBest + score
        if (best > storage.getSetting("best"))
            storage.setSetting("best", best)
        settingBest = 0
        updateSettings()

        var pipe         = pipeHolder.children[0]
        settingDistance += page.width - pipe.x

        labelRestart.text = "GAME OVER"
    }

    function newPipes(){

        var randY = (Math.random() *5) +2

        randY -= 9 /2
        randY  = (page.height /9) * randY

        var comp = Qt.createComponent("itemPipe.qml")
        var obj  = comp.createObject(pipeHolder)
        obj.y   += randY

        newPipe = true
    }

    function newBubble(){

        var comp = Qt.createComponent("itemBubble.qml")
        var obj  = comp.createObject(bubbleHolder)

        var tmp     = (Math.random() *30) +30

        obj.x       = ((page.width + tmp) * Math.random()) - (tmp *0.5)
        obj.width   = tmp
        obj.opacity = (Math.random() * 0.45) + 0.25
        bubbleHolder.children[bubbleHolder.children.length -1].setup()
    }

    ParallelAnimation{
        id: deadFish

        NumberAnimation{
            id: deadFishDown

            target:   player
            property: "y"
            duration: 800
            to:       page.height + player.height
        }

        NumberAnimation{
            id: deadFishBack

            target:   player
            property: "x"
            duration: 800
            to:       page.width /5

            easing.type: Easing.OutCubic
        }
    }

    NumberAnimation{
        id: newScore

        target:   labelScoreInt
        property: "font.pixelSize"
        duration: 500
        from:     theme.fontSizeExtraLarge
        to:       theme.fontSizeLarge
    }

    NumberAnimation{
        id: newHighscore

        target:   labelHighscoreInt
        property: "font.pixelSize"
        duration: 500
        from:     theme.fontSizeLarge * 2
        to:       theme.fontSizeLarge

        onRunningChanged:{

            if (!running)
                newHighscore.from = theme.fontSizeExtraLarge
        }
    }

    Timer{
        id: gameTime

        interval: gameSpeed
        repeat:   true
        running:{

            if (alive && !paused)
                return true
            else
                return false
        }

        onTriggered:{

            settingTime  += gameTime.interval

            velo += grav / 4

            if (velo > maxV)
                velo = maxV
            else if (velo < maxV *-1)
                velo = maxV *-1

            player.y += velo

            if (Math.random() > 0.98)
                newBubble()

            if (player.y + player.height >= page.height)
                gameOver()

            var pipe = pipeHolder.children[pipeHolder.children.length -1]
            if (point1.mapToItem(null).x >= pipe.x && point0.mapToItem(null).x <= pipe.x + pipe.width && alive)
                collisionCheck()

            else if (newPipe && player.x > pipe.x + pipe.width){

                newPipe  = false
                score   += 1
            }
        }
    }

    Storage{
        id: storage
    }

    Flickable{

        anchors.fill: parent

        contentHeight: page.height
        contentWidth:  page.width

        TopMenu{
            id: topMenu

            property bool show: !alive
            property bool back: false
        }

        Item{
            id: player

            width:  childrenRect.width
            height: childrenRect.height

            rotation: velo

            Behavior on rotation{

                NumberAnimation{

                    duration: gameSpeed
                }
            }

            Behavior on y{

                NumberAnimation{

                    duration: gameSpeed
                }
            }

            Rectangle{
                id: highlightColor

                color:   theme.highlightColor
                visible: false
            }
            Rectangle{
                id: secondaryHighlightColor

                color:   theme.secondaryHighlightColor
                visible: false
            }

            Rectangle{
                id: point0

                color: "transparent"
                z: 1000
                width: 1
                height: width

                anchors.verticalCenter:   body.top
                anchors.horizontalCenter: body.left
            }

            Rectangle{
                id: point1

                color: "transparent"
                z: 1000
                width: 1
                height: width

                anchors.verticalCenter:   body.verticalCenter
                anchors.horizontalCenter: body.right
            }

            Rectangle{
                id: point2

                color: "transparent"
                z: 1000
                width: 1
                height: width

                anchors.verticalCenter:   body.bottom
                anchors.horizontalCenter: body.left
            }

            Triangle{
                id: body

                height: 60
                width: 80

                color:          theme.highlightColor
                onColorChanged: requestPaint()
            }

            Triangle{
                id: tail

                width:  (body.height / 4) *3
                height: width
                z:      body.z -1

                color:          theme.secondaryHighlightColor
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

                color:          theme.secondaryHighlightColor
                onColorChanged: requestPaint()

                rotation: 180

                anchors{

                    verticalCenter: body.verticalCenter
                    left:           body.left
                    leftMargin:     width /10
                }
            }

            Rectangle{
                id: eye

                width:  body.height /3
                height: width
                radius: width

                color: theme.primaryColor

                border.color: theme.highlightColor
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

                    color: theme.secondaryHighlightColor

                    anchors.centerIn: parent

                    antialiasing: true
                    smooth:       true
                }
            }
        }

        Item{
            id: pipeHolder

            anchors.fill: parent
        }
        Item{
            id: bubbleHolder

            anchors.fill: parent
        }

        MouseArea{
            id: mouseArea

            anchors.fill: parent

            onPressed:{

                if (alive && !paused){

                    velo          = jump
                    settingJumps += 1

                    var bubble = bubbleHolder.childAt(mouseX, mouseY)

                    if (bubble !== null){

                        bubble.pop()
                        settingBubbles += 1
                        settingBest    += 1
                    }
                }
            }

            onClicked:{

                if (paused)
                    paused = false

                else if (!alive && labelRestart.opacity == 1)
                    restart()
            }
        }

        Label{
            id: labelRestart

            property bool isAlive: alive

            onIsAliveChanged:{

                if (isAlive)
                    opacity = 0
                else
                    opacity = 1
            }

            Behavior on opacity{

                NumberAnimation{

                    duration: 1000

                    onRunningChanged: if (!running) labelRestart.text = "CLICK TO RESTART"
                }
            }

            anchors.centerIn: parent

            color:               theme.highlightColor
            font.pixelSize:      theme.fontSizeExtraLarge
            font.bold:           true
            horizontalAlignment: Text.horizontalAlignment

			text: "CLICK TO START"
        }

        Rectangle{

            color:        "black"
            anchors.fill: parent
            opacity:      0

            property bool isPasued: paused

            onIsPasuedChanged:{

                if (isPasued && alive){

                    opacity             = 0.33
                    labelPaused.opacity = 1.0
                }
                else{

                    opacity             = 0
                    labelPaused.opacity = 0
                }
            }

            Behavior on opacity{

                NumberAnimation{

                    duration: 400
                }
            }
        }


        Label{
            id: labelPaused

            anchors.centerIn: parent

            color:          theme.highlightColor
            font.pixelSize: theme.fontSizeExtraLarge
            font.bold:      true
            opacity:        0

            text: "CLICK TO RESUME"

            Behavior on opacity{

                NumberAnimation{

                    duration: 400
                }
            }
        }

        Item{
            id: labels

            width: page.width
            y:     topMenu.y+topMenu.height

            Label{
                id: labelScore

                x: theme.paddingLarge; y: theme.paddingLarge

                color:          theme.secondaryColor
                font.pixelSize: theme.fontSizeLarge

                text: "Score"
            }
            Label{
                id: labelScoreInt

                x: theme.paddingLarge; y: labelScore.y+labelScore.height

                color:               theme.primaryColor
                font.pixelSize:      theme.fontSizeLarge
                font.bold:           true

                text: score
            }

            Label{
                id: labelHighscore

                x: (page.width - theme.paddingLarge) -width; y: theme.paddingLarge

                color:               theme.secondaryColor
                font.pixelSize:      theme.fontSizeLarge

                text: "Highscore"
            }
            Label{
                id: labelHighscoreInt

                x: (page.width - theme.paddingLarge) -width; y: labelHighscore.y+labelHighscore.height

                color:               theme.primaryColor
                font.pixelSize:      theme.fontSizeLarge
                font.bold:           true

                text: highscore
            }
        }


        Column{
            id: author

            property bool isAlive: alive

            onIsAliveChanged:{

                if (isAlive)
                    opacity = 0
                else
                    opacity = 1
            }

            Behavior on opacity{

                NumberAnimation{

                    duration: 1200
                }
            }

            anchors{

                right:        parent.right
                rightMargin:  theme.paddingMedium
                bottom:       parent.bottom
                bottomMargin: theme.paddingMedium
            }

            spacing: -5

            Label{

                text:           "Created by Felix Woxström"
                color:          theme.highlightColor
                font.pixelSize: theme.fontSizeMedium
            }
            Label{

                text:           "fwoxstrom@gmail.com"
                color:          theme.secondaryHighlightColor
                font.pixelSize: theme.fontSizeSmall

                anchors.right: parent.right
            }
        }
    }
}
