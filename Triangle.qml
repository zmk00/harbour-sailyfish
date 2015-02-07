import QtQuick          2.0
import QtQuick.Controls 1.2

Canvas{

    property color color: "gray"

    //antialiasing: true
    //smooth:       true

    onPaint:{

        var ctx = getContext("2d")
        ctx.save()

        ctx.fillStyle = color

        ctx.moveTo(0,     0)
        ctx.lineTo(width, height /2)
        ctx.lineTo(0,     height)

        ctx.closePath()
        ctx.fill()
        ctx.restore()
    }
}
