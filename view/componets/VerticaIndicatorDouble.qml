import QtQuick
import QtQuick.Shapes

Item {
    id: verticalIndicator
    width: 672
    height: 95
    property alias idicatorScape: idicatorScape
    property alias text2: text2
    property alias text1: text1
    layer.samples: 8
    antialiasing: true
    property double minVal: 0
    property double maxVal: 80
    property double value1: 21
    property double value2: 21
    property double stepSmall: 1
    property double stepLarge: 10
    property bool enableSecond:true
    Rectangle {
        id: idicatorScape
        height: 46
        color: "#00000000"
        border.color: "#00ffffff"
        border.width: 2
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        Item {
            id: scaleContainer
            x: 0
            y: 0
            anchors.fill: parent
            anchors.topMargin: -7
            clip: false
            anchors.rightMargin: 37
            anchors.leftMargin: 37
            anchors.bottomMargin: 3
            Shape{
                id: shape
                anchors.fill: parent
                anchors.rightMargin: 0
                anchors.topMargin: 8
                layer.enabled: true
                layer.samples: 8
                ShapePath{
                    id: scaleBase
                    strokeWidth: 3
                    strokeColor: "white"
                    startX: 0
                    startY: shape.height
                    PathLine{
                        x: shape.width
                        y: shape.height
                    }
                }
                Repeater{
                    id: largeScale
                    model: parseInt((maxVal-minVal)/stepLarge+1)
                    delegate: Item{
                        property ShapePath s: ShapePath{
                            strokeWidth: 3
                            strokeColor: "white"
                            startX: parent.width/((maxVal-minVal)/stepLarge)*model.index
                            startY: parent.height
                            PathLine{
                                x: parent.width/((maxVal-minVal)/stepLarge)*model.index
                                y: parent.height-10
                            }
                        }
                        Component.onCompleted: {
                            shape.data.push(s)
                        }
                    }
                }
                Repeater{
                    id: smallScale
                    model: parseInt((maxVal-minVal)/stepSmall)
                    delegate: Item{
                        property ShapePath s: ShapePath{
                            strokeWidth: 1
                            strokeColor: "#c3c3c3"
                            startX: parent.width/((maxVal-minVal)*stepSmall)*model.index
                            startY: parent.height
                            PathLine{
                                x: parent.width/((maxVal-minVal)*stepSmall)*model.index
                                y: parent.height-5
                            }
                        }
                        Component.onCompleted:{
                            shape.data.push(s)
                        }
                    }
                }
            }
            Shape{
                id: shape1
                anchors.fill: parent
                anchors.rightMargin: 0
                anchors.topMargin: 10
                layer.enabled: true
                layer.samples: 8
                ShapePath{
                    id: scaleBase1
                    strokeWidth: 3
                    strokeColor: "white"
                    startX: 0
                    startY: 0
                    PathLine{
                        x: shape.width
                        y: 0
                    }
                }
                Repeater{
                    id: largeScale2
                    model: parseInt((maxVal-minVal)/stepLarge+1)
                    delegate: Item{
                        property ShapePath s: ShapePath{
                            strokeWidth: 3
                            strokeColor: "white"
                            startX: parent.width/((maxVal-minVal)/stepLarge)*model.index
                            startY: 3
                            PathLine{
                                x: parent.width/((maxVal-minVal)/stepLarge)*model.index
                                y: 12
                            }
                        }
                        Component.onCompleted: {
                            shape.data.push(s)
                        }
                    }
                }
                Repeater{
                    id: smallScale1
                    model: parseInt((maxVal-minVal)/stepSmall)
                    delegate: Item{
                        property ShapePath s: ShapePath{
                            strokeWidth: 1
                            strokeColor: "#c3c3c3"
                            startX: parent.width/((maxVal-minVal)*stepSmall)*model.index
                            startY: 3
                            PathLine{
                                x: parent.width/((maxVal-minVal)*stepSmall)*model.index
                                y: 8
                            }
                        }
                        Component.onCompleted:{
                            shape.data.push(s)
                        }
                    }
                }
            }
            Repeater{
                id: largeScaleNumbers

                model: parseInt((maxVal-minVal)/stepLarge+1)

                delegate:Text{
                    width: 31
                    height: parent.height
                    x: parent.width/((maxVal-minVal)/stepLarge)*model.index-width/2-1
                    y: 3
                    color: "white"
                    text: minVal+stepLarge*model.index
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }
        Item {
            id: digitalValue
            x: 35
            y: 32
            width: 75
            height: 39
            anchors.left: parent.left
            anchors.leftMargin:{
                if(value1<minVal){
                    0
                }
                else if(value1>maxVal){
                    (maxVal-minVal)*((parent.width-width)/(maxVal-minVal))
                }
                else{
                    0 +(-minVal+value1)*((parent.width-width)/(maxVal-minVal))
                }
            }

            Rectangle {
                id: rectangle
                x: 0
                y: 14
                width: 75
                height: 25
                color: "transparent"
                border.color: "transparent"
                border.width: 2

                TextCust {
                    id: digitalValueText
                    x: 0
                    y: -14
                    color: "#008aff"
                    text: value1.toFixed(1)+"C°"
                    anchors.fill: parent
                    font.letterSpacing: -2.6
                    level:2
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter

                }
            }
            Shape {
                id:arrow
                width: 11
                height: 16
                anchors.verticalCenterOffset: -13
                anchors.horizontalCenterOffset: 0
                anchors.centerIn: parent
                ShapePath {
                    strokeWidth: 1
                    strokeColor: "transparent"
                    fillColor: Styles.blueDark
                    startX: 0; startY: arrow.height
                    PathLine { x: arrow.width; y: arrow.height }
                    PathLine { x: arrow.width/2; y: 0 }
                    PathLine { x: 0; y: arrow.height }
                }
            }
        }

        Item {
            id: digitalValue2
            x: 33
            y: -40
            width: 75
            height: 39
            anchors.left: parent.left
            anchors.leftMargin:{
                if(value2<minVal){
                    0
                }
                else if(value2>maxVal){
                    (maxVal-minVal)*((parent.width-width)/(maxVal-minVal))
                }
                else{
                    0 +(-minVal+value2)*((parent.width-width)/(maxVal-minVal))
                }
            }
            visible: enableSecond
            Rectangle {
                id: rectangle1
                x: 0
                y: 14
                width: 75
                height: 25
                color: "transparent"
                border.color: "transparent"
                border.width: 2
                TextCust {
                    id: digitalValueText1
                    x: 0
                    y: -14
                    color: "#008aff"
                    text: value2.toFixed(1)+"C°"
                    anchors.fill: parent
                    font.letterSpacing: -2.6
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level:2
                }
            }

            Shape {
                id: arrow1
                width: 11
                height: 16
                rotation: -180
                anchors.horizontalCenterOffset: 0
                anchors.verticalCenterOffset: 26
                ShapePath {
                    startY: arrow1.height
                    strokeColor: "transparent"
                    fillColor: Styles.blueDark
                    strokeWidth: 1
                    startX: 0
                    PathLine {
                        x: arrow1.width
                        y: arrow1.height
                    }

                    PathLine {
                        x: arrow1.width/2
                        y: 0
                    }

                    PathLine {
                        x: 0
                        y: arrow1.height
                    }
                }
                anchors.centerIn: parent
            }
        }

        TextCust {
            id: text1
            x: 0
            y: 6
            width: 33
            height: 16
            color: "#d0d0d0"
            text: qsTr("Text")
            level:3
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            visible: enableSecond
        }

        TextCust {
            id: text2
            x: 0
            y: 26
            width: 33
            height: 16
            color: "#d0d0d0"
            text: qsTr("Text")
            level:3
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

    }
}




/*##^##
Designer {
    D{i:0;height:90;width:715}D{i:4}D{i:6}D{i:10}D{i:3}D{i:15}D{i:17}D{i:21}D{i:14}D{i:25}
D{i:2}D{i:29}D{i:28}D{i:31}D{i:30}D{i:27}D{i:37}D{i:36}D{i:39}D{i:38}D{i:35}D{i:43}
D{i:44}D{i:1}
}
##^##*/
