import QtQuick
import QtQuick.Shapes

Item {
    id: circularDialV2


    implicitHeight: 220
    implicitWidth:  220

    property double value: 40
    property double maxValue: 80
    property double minValue: 0
    property double safeVal:{
        if(value<minValue)
            minValue
        else if(value>maxValue)
            maxValue
        else
            value
    }

    property double numScale:1
    property int numFixed:0
    property string scaleText:""
    property double smallStep:1
    property double bigStep:10

    property double startAng:50
    property double endAng:310
    property double difAng:endAng-startAng


    property bool warningTogle: false
    property bool errorTogle: false

    state:{
        if(errorTogle||value<minValue||value>maxValue){
            "error"
        }
        else if(warningTogle){
            "warning"
        }
        else{
            ""
        }
    }

    width: 210
    height: 210
    property alias dial: dial
    smooth: true
    antialiasing: true
    layer.enabled: true
    layer.samples: 8
    Rectangle {
        color:"black"
        anchors.fill: parent

    }

    Rectangle {
        id: dial
        color:"transparent"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        Shape{
            id:circle
            anchors.fill: parent
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
                    startAngle: startAng

                    sweepAngle: difAng
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
                    startAngle: startAng

                    sweepAngle: difAng
                }
            }
            Repeater{
                id: largeScale
                model: parseInt((maxValue-minValue)/(bigStep))+1
                delegate: Item{
                    property ShapePath s: ShapePath{
                        strokeWidth: 2
                        strokeColor: "#b9b9b9"
                        startX: dial.width/2+Math.cos(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-18)
                        startY: dial.height/2+ Math.sin(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.height/2-18)
                        PathLine{
                            x:  dial.width/2+Math.cos(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-22)

                            y:  dial.height/2+ Math.sin(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-22)
                        }
                        Component.onCompleted: {
                            circle.data.push(s)
                        }
                    }

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
                    startAngle: startAng

                    sweepAngle: difAng*safeVal/(maxValue-minValue)
                }
            }
        }
        Repeater{
            id: largeScaleNums
            model: parseInt((maxValue-minValue)/(bigStep))+1
            delegate: Text {
                id:scaleNums
                color:"white"
                x:  dial.width/2+Math.cos(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-32) - scaleNums.width/2

                y:  dial.height/2+ Math.sin(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-32) - scaleNums.height/2
                text:(minValue+ model.index*bigStep/numScale).toFixed(numFixed)+scaleText
            }
        }
    }
    states: [
        State {
            name: "warning"
            PropertyChanges {
                target: filed
                strokeColor: "orange"
            }
        },
        State {
            name: "error"
            PropertyChanges {
                target: filed
                strokeColor: "red"
            }
        }
    ]
    function toRadians (angle) {
        return angle * (Math.PI / 180);
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:1;locked:true}D{i:4}D{i:6}D{i:8}D{i:12}D{i:3}D{i:14}
D{i:2}
}
##^##*/
