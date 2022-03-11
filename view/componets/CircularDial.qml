import QtQuick
import QtQuick.Shapes

Item {
    id: circularDial


    height: 210
    width:  210

    property double value: 400
    property double maxValue: 750
    property double minValue: 0
    property double warningValue: 700
    state:value>warningValue?"low":""
    property string labelText:"def"
    property int strWidth:20
    smooth: true
    antialiasing: true

    Rectangle {
        id: dial
        color:"transparent"
        anchors.fill: parent
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
                strokeWidth:strWidth
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
                strokeWidth:strWidth-2
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
                strokeWidth:strWidth-2
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
    states: [
        State {
            name: "low"
            PropertyChanges {
                target: filed
                strokeColor: "orange"
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:210;width:210}D{i:3}D{i:5}D{i:7}D{i:9}D{i:2}D{i:1}
}
##^##*/
