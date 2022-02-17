import QtQuick
import QtQuick.Shapes

Item {
    id: circularDial


    implicitHeight: 220
    implicitWidth:  220

    property double value: 40
    property double maxValue: 80
    property double minValue: 0
    property string labelText:"DUCT\nPRESS"
    smooth: true
    antialiasing: true
    Rectangle {
        color:"black"
        anchors.fill: parent

    }

    Rectangle {
        id: dial
        width: 200
        height: 200
        color:"transparent"
        x: 10
        y: 10
        Shape{
            id:circle
            anchors.fill: parent
            antialiasing: true
            layer.enabled: true
            layer.samples: 8

            ShapePath{
                id:circleBorder
                strokeColor: "#5a5a5a"
                fillColor:"transparent"
                strokeWidth:20
                capStyle: ShapePath.RoundCap

                PathAngleArc{
                    radiusX: (dial.width/2)-(circleBorder.strokeWidth/2)
                    radiusY: (dial.height/2)-(circleBorder.strokeWidth/2)
                    centerX: dial.width/2
                    centerY: dial.height/2
                    startAngle: 40

                    sweepAngle: 280
                }
            }

            ShapePath{
                id:circleBackGround
                strokeColor: "#3f3f3f"
                fillColor:"transparent"
                strokeWidth:18
                capStyle: ShapePath.RoundCap

                PathAngleArc{
                    radiusX: (dial.width/2)-(circleBackGround.strokeWidth/2)-1
                    radiusY: (dial.height/2)-(circleBackGround.strokeWidth/2)-1
                    centerX: dial.width/2
                    centerY: dial.height/2
                    startAngle: 40

                    sweepAngle: 280
                }
            }
            ShapePath{
                id:filed
                strokeColor: "#00b9ff"
                fillColor:"transparent"
                strokeWidth:18
                capStyle: ShapePath.RoundCap

                PathAngleArc{
                    radiusX: (dial.width/2)-(circleBackGround.strokeWidth/2)-1
                    radiusY: (dial.height/2)-(circleBackGround.strokeWidth/2)-1
                    centerX: dial.width/2
                    centerY: dial.height/2
                    startAngle: 40

                    sweepAngle: 280*value/(maxValue-minValue)
                }
            }
            Path {

                startX: 169; startY: 177
                PathLine { x: 200; y: 100 }
            }
        }
    }

    Text {
        id: valueDigital
        y: 84
        color: "#ffffff"
        text: circularDial.value.toFixed(0)
        anchors.left: parent.left
        anchors.right: parent.right
        font.pixelSize: 42
        horizontalAlignment: Text.AlignHCenter
        anchors.rightMargin: 42
        anchors.leftMargin: 43
        font.bold: false
        font.family: "Verdana"
    }

    Text {
        id: dialLabel
        y: 41
        color: "#0083ff"
        text: circularDial.labelText
        anchors.left: parent.left
        anchors.right: parent.right
        font.pixelSize: 19
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 87
        anchors.leftMargin: 87
        font.family: "Verdana"
        font.bold: false
    }

    Text {
        id: units
        y: 134
        color: "#0083ff"
        text: "PSI"
        anchors.left: parent.left
        anchors.right: parent.right
        font.pixelSize: 19
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 96
        anchors.leftMargin: 96
        font.bold: false
        font.family: "Verdana"
    }

    Text {
        id: label0
        x: 179
        y: 187
        width: 41
        height: 23
        color: "#ffffff"
        text: qsTr("0")
        anchors.right: parent.right
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
        font.family: "Verdana"
        font.bold: false
    }

    Text {
        id: label3
        x: 174
        y: 10
        width: 46
        height: 23
        color: "#ffffff"
        text: (maxValue).toFixed(0)
        anchors.right: parent.right
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
        font.family: "Verdana"
        font.bold: false
    }

    Text {
        id: lable1
        y: 187
        width: 40
        height: 23
        color: "#ffffff"
        text: (maxValue/3).toFixed(0)
        anchors.left: parent.left
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 0
        font.family: "Verdana"
        font.bold: false
    }

    Text {
        id: lable2
        x: 10
        y: 10
        width: 48
        height: 23
        color: "#ffffff"
        text: (maxValue/3*2).toFixed(0)
        anchors.left: parent.left
        font.pixelSize: 15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 0
        font.family: "Verdana"
        font.bold: false
    }
    states: [
        State {
            name: "low"
            PropertyChanges {
                target: filed
                strokeColor: "orange"
            }
            PropertyChanges {
                target: valueDigital
                color: "orange"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.66}D{i:1}D{i:4}D{i:6}D{i:8}D{i:10}D{i:3}D{i:2}D{i:12}D{i:13}
D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}
}
##^##*/
