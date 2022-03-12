import QtQuick
import QtQuick.Shapes

Item {
    id:circularDialEgt
    width: 210
    height: 210
    property double value: 10
    property double warVal:926
    property double kriticVal: 950
    property double maxVal: 950
    property double minVal: 0

    CircularDial {
        id: circularDial
        anchors.fill: parent
        orangeVal: warVal
        redVal: kriticVal
        maxValue: maxVal
        strWidth: 17
        value:circularDialEgt.value
    }

    DigitalVal {
        id: digitalVal
        x: 71
        y: 75
        width: 131
        height: 60
        value: circularDialEgt.value
        fixedVal: 0
        texHeight: 50
    }
    ShapePath {
        strokeColor: "red"
        strokeWidth: 16
        fillColor: "transparent"
        capStyle: ShapePath.RoundCap

        property int joinStyleIndex: 0

        property variant styles: [
            ShapePath.BevelJoin,
            ShapePath.MiterJoin,
            ShapePath.RoundJoin
        ]

        joinStyle: styles[joinStyleIndex]

        startX: 30
        startY: 30
        PathLine { x: 100; y: 100 }
        PathLine { x: 30; y: 100 }
    }

    function toRadians (angle) {
        return angle * (Math.PI / 180);
    }

}



/*##^##
Designer {
    D{i:0;height:220;width:220}D{i:1}D{i:2}D{i:3}
}
##^##*/
