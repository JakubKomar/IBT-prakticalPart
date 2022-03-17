import QtQuick 2.0
import QtQuick.Shapes
Item {
    id:surfaceIndicatorHorizontal
    height: 200

    property double minVal:-1
    property double maxVal:1
    property double safeVal:{val<minVal?minVal:val>maxVal?maxVal:val}
    property double noneOscilateVal: {
        if(Math.abs(safeVal)<0.01)
            0
        else
            safeVal
    }
    property double val:-0.75
    property bool indicateMidle:true
    property int shapeHeight : 3
    property string description:"elevator"
    property bool digiValOnLeft: true
    width: 93

    Item{
        id:inerBorder
        x: !digiValOnLeft?parent.width-this.width:0
        y: shapeHeight
        width: 28
        height:!indicateMidle?parent.height/2-shapeHeight:parent.height-shapeHeight*2
        antialiasing: true
        layer.samples: 8
        layer.enabled: true
        Shape{
            ShapePath{
                strokeColor: "white"
                fillColor: "transparent"
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: inerBorder.width/2
                startY:3
                PathLine{
                    x:inerBorder.width/2
                    y:inerBorder.height-3
                }
            }
            ShapePath{
                strokeColor: "white"
                fillColor: "transparent"
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: inerBorder.width/2
                startY:0
                PathLine{
                    x:inerBorder.width/2
                    y:inerBorder.height
                }
            }
            ShapePath{
                strokeColor: "white"
                fillColor: "transparent"
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: 0
                startY:0
                PathLine{
                    x:inerBorder.width
                    y:0
                }
            }
            ShapePath{
                strokeColor: "white"
                fillColor: "transparent"
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: 0
                startY:inerBorder.height
                PathLine{
                    x:inerBorder.width
                    y:inerBorder.height
                }
            }
            ShapePath{
                strokeColor: indicateMidle? "white":"transparent"
                fillColor: "transparent"
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: inerBorder.width/4
                startY:inerBorder.height/2
                PathLine{
                    x:inerBorder.width/4*3
                    y:inerBorder.height/2
                }
            }
            ShapePath{
                strokeColor:fillColor
                fillColor: Styles.blue
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: 0
                startY:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)+shapeHeight
                PathLine{
                    x:inerBorder.width/2
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)
                }
                PathLine{
                    x:0
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)-shapeHeight
                }
                PathLine{
                    x:0
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)+shapeHeight
                }

            }
            ShapePath{
                strokeColor:fillColor
                fillColor: Styles.blue
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: inerBorder.width
                startY:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)+shapeHeight
                PathLine{
                    x:inerBorder.width
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)-shapeHeight
                }
                PathLine{
                    x:inerBorder.width/2
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)
                }
                PathLine{
                    x:inerBorder.width
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)+shapeHeight
                }
            }
        }
    }

    Rectangle {
        id: digiValBorder
        x: digiValOnLeft?parent.width-this.width:0
        width: 65
        height: 50
        color: "#00ffffff"
        radius: 8
        border.color: "#ffffff"
        border.width: 1
        anchors.verticalCenter: parent.verticalCenter

        TextCust {
            id: descr
            color: Styles.blueDark
            text: description
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            font.letterSpacing: -0.3
            level:3
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.wordSpacing: -0.3
            anchors.topMargin: 3
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        TextCust {
            id: digitalVal
            y: 22
            color: "#ffffff"
            text: noneOscilateVal.toFixed(2)
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            level:2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }
}

/*##^##
Designer {
    D{i:0;height:180;width:93}D{i:3}D{i:5}D{i:7}D{i:9}D{i:11}D{i:13}D{i:17}D{i:2}D{i:1}
D{i:22}D{i:23}D{i:21}
}
##^##*/
