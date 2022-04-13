/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:58:22
  * @ Description:circular dial v2
 */

import QtQuick
import QtQuick.Shapes

Item {
    id: circularDialV2


    height: 220
    width:  220

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
    property bool hideScale:false
    property bool hideScaleText:false

    property bool warningTogle: false
    property bool errorTogle: false

    property int startRadiusOfScale:22
    property int endRadiusOfScale:18
    property int numRadiusOfScale:35

    property double redVal: maxValue
    property double orangeVal: maxValue

    property bool redValEneb:false
    property bool orangeValEneb:false

    property double redMinVal: minValue
    property double orangeMinVal: minValue

    property bool redMinValEneb:false
    property bool orangeMinValEneb:false

    property alias dial: dial
    property alias col:filed.strokeColor
    smooth: true
    antialiasing: true
    layer.enabled: true
    layer.samples: 8

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
            ShapePath{
                id:filed
                strokeColor: if(value<redMinVal&&redMinValEneb||value>redVal&&redValEneb||errorTogle)
                                 "red"
                            else if(value<orangeMinVal&&orangeMinValEneb||value>orangeVal&&orangeValEneb||warningTogle)
                                 "orange"
                            else
                                 Styles.blue
                fillColor:"#00000000"
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
            ShapePath {
                id:kritStop
                strokeColor: redValEneb? "red":"transparent"
                strokeWidth: 2
                fillColor: "transparent"

                startX: dial.width/2+ Math.cos(toRadians(startAng+(difAng/(maxValue- minValue))*redVal))* (dial.width/2-circleBackGround.strokeWidth)
                startY: dial.height/2+Math.sin(toRadians(startAng+(difAng/(maxValue- minValue))*redVal))* (dial.height/2-circleBackGround.strokeWidth)
                PathLine {
                    x: dial.width/2+ Math.cos(toRadians(startAng+(difAng/(maxValue- minValue))*redVal))* (dial.width/2+5)
                    y: dial.height/2+Math.sin(toRadians(startAng+(difAng/(maxValue- minValue))*redVal))* (dial.height/2+5)
                }
            }
            ShapePath {
                id:warStop
                strokeColor: orangeValEneb? "orange":"transparent"
                strokeWidth: 2
                fillColor: "transparent"

                startX: dial.width/2+ Math.cos(toRadians(startAng+(difAng/(maxValue- minValue))*orangeVal))* (dial.width/2-circleBackGround.strokeWidth)
                startY: dial.height/2+Math.sin(toRadians(startAng+(difAng/(maxValue- minValue))*orangeVal))* (dial.height/2-circleBackGround.strokeWidth)
                PathLine {
                    x: dial.width/2+ Math.cos(toRadians(startAng+(difAng/(maxValue- minValue))*orangeVal))* (dial.width/2+5)
                    y: dial.height/2+Math.sin(toRadians(startAng+(difAng/(maxValue- minValue))*orangeVal))* (dial.height/2+5)
                }
            }
            ShapePath {
                id:kritStopMin
                strokeColor: redMinValEneb? "red":"transparent"
                strokeWidth: 2
                fillColor: "transparent"

                startX: dial.width/2+ Math.cos(toRadians(startAng+(difAng/(maxValue- minValue))*redMinVal))* (dial.width/2-circleBackGround.strokeWidth)
                startY: dial.height/2+Math.sin(toRadians(startAng+(difAng/(maxValue- minValue))*redMinVal))* (dial.height/2-circleBackGround.strokeWidth)
                PathLine {
                    x: dial.width/2+ Math.cos(toRadians(startAng+(difAng/(maxValue- minValue))*redMinVal))* (dial.width/2+5)
                    y: dial.height/2+Math.sin(toRadians(startAng+(difAng/(maxValue- minValue))*redMinVal))* (dial.height/2+5)
                }
            }
            ShapePath {
                id:warStopMin
                strokeColor: orangeMinValEneb? "orange":"transparent"
                strokeWidth: 2
                fillColor: "transparent"

                startX: dial.width/2+ Math.cos(toRadians(startAng+(difAng/(maxValue- minValue))*orangeMinVal))* (dial.width/2-circleBackGround.strokeWidth)
                startY: dial.height/2+Math.sin(toRadians(startAng+(difAng/(maxValue- minValue))*orangeMinVal))* (dial.height/2-circleBackGround.strokeWidth)
                PathLine {
                    x: dial.width/2+ Math.cos(toRadians(startAng+(difAng/(maxValue- minValue))*orangeMinVal))* (dial.width/2+5)
                    y: dial.height/2+Math.sin(toRadians(startAng+(difAng/(maxValue- minValue))*orangeMinVal))* (dial.height/2+5)
                }
            }
        }
        Item{
            visible: !hideScaleText
            Repeater{
                id: largeScaleNums
                model: parseInt((maxValue-minValue)/(bigStep))+1
                delegate: TextCust {

                    id:scaleNums
                    color:"white"
                    level:3
                    x:  dial.width/2+Math.cos(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-numRadiusOfScale) - scaleNums.width/2

                    y:  dial.height/2+ Math.sin(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-numRadiusOfScale) - scaleNums.height/2
                    text:(minValue+ model.index*bigStep/numScale).toFixed(numFixed)+scaleText
                }
            }
        }
        Item{
            visible: !hideScale
            Repeater{
                id: largeScale
                model: parseInt((maxValue-minValue)/(bigStep))+1
                delegate: Item{
                    property ShapePath s: ShapePath{
                        strokeWidth: 2
                        strokeColor: "#b9b9b9"
                        startX: dial.width/2+Math.cos(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-startRadiusOfScale)
                        startY: dial.height/2+ Math.sin(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.height/2-startRadiusOfScale)
                        PathLine{
                            x:  dial.width/2+Math.cos(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-endRadiusOfScale)

                            y:  dial.height/2+ Math.sin(toRadians(startAng+(model.index * difAng/((maxValue-minValue)/bigStep))))*(dial.width/2-endRadiusOfScale)
                        }
                        Component.onCompleted: {
                            circle.data.push(s)
                        }
                    }

                }
            }
        }      
    }
    function toRadians (angle) {
        return angle * (Math.PI / 180);
    }

}

/*##^##
Designer {
    D{i:0;height:210;width:210}D{i:3}D{i:5}D{i:7}D{i:9}D{i:11}D{i:13}D{i:15}D{i:2}D{i:18}
D{i:17}D{i:21}D{i:20}D{i:1}
}
##^##*/
