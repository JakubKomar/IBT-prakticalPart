import QtQuick
import QtQuick.Controls
import QtQuick.Shapes

Item {
    id: guard
    width: 250
    height: 131
    antialiasing: true
    layer.enabled: true
    layer.samples: 8
    property bool guarded:true
    property color guardCol: "#d0282828"
    property color guardBorderCol: "white"
    signal unGuard()
    signal guard()


    Rectangle {
        id: guardOpen
        color: "transparent"
        radius: 7
        border.color: "transparent"
        border.width: 2
        clip: true
        visible: !guarded
        width: parent.width
        height: parent.height

        Shape {
            id:guardShape
            anchors.fill: parent

            ShapePath {
                id:shape1
                strokeWidth: 0
                strokeColor: "transparent"
                fillColor: guardCol
                startX: 4; startY: 10
                PathLine { x: 40; y: 10 }
                PathLine { x: 40; y:  guardShape.height-shape1.startY }
                PathLine { x: 4; y: guardShape.height-shape1.startY }
                PathLine { x: shape1.startX; y: shape1.startY }
            }
            ShapePath {
                id:shape9
                strokeWidth: 4
                strokeColor: guardBorderCol
                fillColor: guardCol
                startX: 38; startY: 10
                PathLine { x: 4; y: 10 }
                PathLine { x: 4; y:  guardShape.height-shape9.startY }
                PathLine { x: 38; y: guardShape.height-shape9.startY }
            }


        }

        MouseArea {
            id: mouseArea1
            width: 40
            height: parent.height
            onClicked: {
                guard()
            }

        }
    }



    Rectangle {
        id: guardClose
        width: parent.width
        height: parent.height
        visible: guarded
        color: "transparent"
        radius: 7
        border.color: "transparent"
        clip: true
        Shape {
            id: guardShape1
            anchors.fill: parent
            ShapePath {
                id: shape3
                strokeWidth: 4
                strokeColor: guardBorderCol
                fillColor: guardCol
                PathLine {
                    x: 40
                    y: shape3.startX
                }

                PathLine {
                    x: guardShape1.width-10
                    y: shape3.startX
                }

                PathLine {
                    x: guardShape1.width-10
                    y: guardShape1.height-shape3.startX
                }

                PathLine {
                    x: 40
                    y: guardShape1.height-shape3.startX
                }

                PathLine {
                    x: shape3.startX
                    y: guardShape1.height-shape3.startY
                }

                PathLine {
                    x: shape3.startX
                    y: shape3.startY
                }
                startX: 10
                startY: 25
            }
            ShapePath {
                strokeWidth: 4
                strokeColor: guardBorderCol
                PathLine {
                    x: 40
                    y: guardShape1.height-10
                }
                startX: 40
                startY: 10
            }

            ShapePath {
                id: shape5
                strokeWidth: 4
                strokeColor: guardBorderCol
                PathLine {
                    x: shape5.startX
                    y: guardShape1.height-shape5.startY
                }
                startX: 10
                startY: 10
            }


            ShapePath {
                strokeWidth: 4
                strokeColor: guardBorderCol
                PathLine {
                    x: 15
                    y: 10
                }
                startX: 5
                startY: 10
            }


            ShapePath {
                strokeWidth: 4
                strokeColor: guardBorderCol
                PathLine {
                    x: 15
                    y: guardShape1.height-10
                }
                startX: 5
                startY: guardShape1.height-10
            }

            ShapePath {
                id: shape8
                strokeWidth: 4
                strokeColor: guardBorderCol
                PathLine {
                    x: 20
                    y: guardShape1.height-10
                }
                startX: 20
                startY: guardShape1.height-10
            }

        }

        MouseArea {
            id: mouseArea
            visible: guarded
            property int startX: 0
            property int startY: 0
            anchors.fill: parent
            anchors.rightMargin: 0
            onPressed: {
                startX=mouseX
                startY=mouseY
            }
            onReleased:{
                if(startX>parent.width/2&&mouseX<parent.width/2){
                    console.log( "Acept")
                    unGuard()
                }
                else
                    console.log( "Reject")

            }
            onPositionChanged: {

            }

        }
    }

}



/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:6;height:480;width:640}D{i:2}D{i:12}D{i:1}D{i:14}
D{i:32}D{i:13}
}
##^##*/
