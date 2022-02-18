import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:tempControl
    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"

    WarningIndicator{
        x: 1485
        y: 616
    }
    Rectangle {
        id: rectangle1
        x: 734
        y: -573
        width: 317
        height: 1508
        color: "#ffffff"
        rotation: -270
    }

    Connections{
        target:ControlBleed

    }

    Connections{
        target:RenderBleed

        function onSetSwich(name,pos){
            switch(name){
            case"lPack":{
                lPack.position=pos
                break;
            }
            default:{}
            }
        }
    }
    Swich2stateBasic{
        x: 122
        y: 754
        swich2state.togled: true
        swich2state.textWidthStatus: 19
        swich2state.onText: "ALTERNATIVE"
        swich2state.offText: "NORMAL"
        swich2state.description: "FAN"
    }
    Swich2stateWarning{
        x: 122
        y: 488
    }
    Swich2stateWarning{
        x: 370
        y: 488
    }

    Column {
        id: column
        x: 872
        y: 378
        width: 584
        height: 600
        spacing: 0
        rotation: 0



        Slider {
            id: slider
            height: 54
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            value: 0.5
        }


        Verticalndicator {
            id: temp1
            height: 61
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            minVal: 0
            value: 6.6
            maxVal: 80
        }


        Slider {
            id: slider1
            height: 45
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            value: 0.5
        }

        Verticalndicator {
            id: temp2
            height: 61
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            minVal: 0
            value: 6.6
            maxVal: 80
        }

        Slider {
            id: slider2
            height: 45
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            value: 0.5
            anchors.rightMargin: 0
        }

        Verticalndicator {
            id: temp3
            height: 61
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            minVal: 0
            value: 6.6
            maxVal: 80
        }


        Verticalndicator {
            id: temp4
            height: 61
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            minVal: 0
            value: 6.6
            maxVal: 80
        }


        Verticalndicator {
            id: temp5
            height: 61
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            minVal: 0
            value: 6.6
            maxVal: 80
        }


        Verticalndicator {
            id: temp6
            height: 61
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            minVal: 0
            value: 6.6
            maxVal: 80
        }


        Verticalndicator {
            id: temp
            height: 61
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            value: 6.6
            maxVal: 80
            minVal: 0
        }


        Verticalndicator {
            id: temp7
            height: 61
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            minVal: 0
            value: 6.6
            maxVal: 80
        }



    }

    WarningIndicator {
        x: 1485
        y: 502
    }

    WarningIndicator {
        x: 1485
        y: 390
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:9}D{i:10}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:8}D{i:20}D{i:21}
}
##^##*/
