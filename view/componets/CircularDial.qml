import QtQuick
import QtQuick.Shapes

Item {
    id: circularDial


    height: 210
    width:  210

    property double value: 400
    property double maxValue: 750
    property double redVal: maxValue
    property double orangeVal: maxValue
    property double minValue: 0
    property color fillCol: "#00b9ff"
    property int strWidth:20
    property int startAng:40
    property int sweepAng:280
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
                    startAngle: startAng

                    sweepAngle: sweepAng
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
                    startAngle: startAng

                    sweepAngle: sweepAng
                }
            }
            ShapePath{
                id:filed
                strokeColor: if(value>redVal)
                                 "red"
                            else if(value>orangeVal)
                                 "#ff9200"
                            else
                                 fillCol
                fillColor:"transparent"
                strokeWidth:strWidth-2
                capStyle: ShapePath.RoundCap

                PathAngleArc{
                    radiusX: (dial.width/2)-(circleBackGround.strokeWidth/2)-1
                    radiusY: (dial.height/2)-(circleBackGround.strokeWidth/2)-1
                    centerX: dial.width/2
                    centerY: dial.height/2
                    startAngle: startAng

                    sweepAngle: if(sweepAng*value/(maxValue-minValue)>sweepAng)
                                    sweepAng
                                else
                                    sweepAng*value/(maxValue-minValue)
                }
            }
            Path {

                startX: 169; startY: 177
                PathLine { x: 200; y: 100 }
            }
        }
    }  
}

/*##^##
Designer {
    D{i:0;height:210;width:210}D{i:3}D{i:5}D{i:7}D{i:9}D{i:2}D{i:1}
}
##^##*/
