import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:tempControl
    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"
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
        x: 1023
        y: 791
        text: "T"
        swich2state.textWidthDescription: 24
        swich2state.onText: "ON"
        swich2state.togled: false
        swich2state.offText: "OFF"
        swich2state.description: "TRIM\nAIR"
    }

    Column {
        id: column
        x: 835
        y: 14
        width: 893
        height: 609
        spacing: 13
        rotation: 0
        Text {
            id: text1
            color: "#039de0"
            text: qsTr("Air temperature")
            anchors.left: parent.left
            anchors.right: parent.right
            font.pixelSize: 36
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        TempModule{
            anchors.left: parent.left
            anchors.right: parent.right
            verticaIndicatorDouble.text2.horizontalAlignment: Text.AlignHCenter
            verticaIndicatorDouble.text2.text: "DUC"
            description.text: "CONT"
            verticaIndicatorDouble.enableSecond: false
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
        TempModule{
            anchors.left: parent.left
            anchors.right: parent.right
            description.text: "FWD"
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
        
        TempModule{
            anchors.left: parent.left
            anchors.right: parent.right
            description.text: "AFT"
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }


        Rectangle {
            id: rectangle1
            height: 92
            color: "#00ffffff"
            border.color: "#484848"
            border.width: 2
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            VerticaIndicatorDouble{
                x: 0
                y: 3
                height: 87
                anchors.left: parent.left
                anchors.right: parent.right
                text2.text: "L"
                text1.text: "R"
                anchors.rightMargin: 0
                anchors.leftMargin: 97
            }

            Rectangle {
                id: rectangle2
                width: 91
                color: "#00ffffff"
                border.color: "#484848"
                border.width: 2
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0

                Text {
                    id: text2
                    color: "#ffffff"
                    text: qsTr("PACK")
                    anchors.fill: parent
                    font.pixelSize: 27
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.capitalization: Font.AllUppercase
                }
            }
        }






    }

    Rectangle {
        id: rectangle3
        x: 1338
        y: 706
        width: 390
        height: 320
        color: "#00ffffff"
        border.color: "#ffffff"
        border.width: 2

        Swich2stateWarning{
            width: 150
            height: 193
            text: ""
            anchors.left: parent.left
            anchors.top: parent.top
            description: "SUPLY\nFAN"
            warningTogle: false
            togled: false
            warningIndicator.warText: "OFF"
            anchors.topMargin: 100
            anchors.leftMargin: 20
            swich2state.textWidthStatus: 32
            swich2state.description: "SUPLY\nFAN"
            swich2state.togled: false
            swich2state.onText: "ALTERNATIVE"
            swich2state.offText: "NORMAL"
        }

        Swich2stateWarning{
            id: swich2stateWarning
            x: 219
            width: 150
            height: 193
            anchors.right: parent.right
            anchors.top: parent.top
            description: "EXHOUST\nFAN"
            warningIndicator.warText: "OFF"
            anchors.topMargin: 100
            anchors.rightMargin: 20
            swich2state.textWidthStatus: 32
            warningIndicator.onColor: "#ff8c00"
            swich2state.onText: "ALTERNATIVE"
            swich2state.offText: "NORMAL"
            swich2state.description: "EXHOUST\nFAN"
        }

        Text {
            id: text3
            x: 185
            y: 24
            color: "#039de0"
            text: qsTr("EQUIPMENT COOLING")
            font.pixelSize: 34
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:1.66}D{i:1}D{i:2}D{i:3}D{i:5}D{i:6}D{i:7}D{i:8}D{i:10}D{i:12}
D{i:11}D{i:9}D{i:4}D{i:13}D{i:15}D{i:16}D{i:17}D{i:14}
}
##^##*/
