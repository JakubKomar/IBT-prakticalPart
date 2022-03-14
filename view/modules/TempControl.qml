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
        target:ControlTemp
    }

    Swich2stateBasic{
        id: trimAir
        x: 1011
        y: 801
        width: 149
        height: 152
        text: "T"
        swich2state.onColor: "#ffae00"
        swich2state.textWidthDescription: 24
        swich2state.onText: "ON"
        swich2state.togled: false
        swich2state.offText: "OFF"
        swich2state.description: "TRIM\nAIR"
        onClicked:{ControlTemp.trimAir()}
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
            id: cont
            anchors.left: parent.left
            anchors.right: parent.right
            warningIndicator.status: 0
            verticaIndicatorDouble.text2.horizontalAlignment: Text.AlignHCenter
            verticaIndicatorDouble.text2.text: "DUC"
            description.text: "CONT"
            verticaIndicatorDouble.enableSecond: false
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            tempSlider.onValueChanged: {ControlTemp.setRheostat("cont_cab_temp",tempSlider.getVal())}
        }
        TempModule{
            id: fwd
            anchors.left: parent.left
            anchors.right: parent.right
            warningIndicator.status: 0
            description.text: "FWD"
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            tempSlider.onValueChanged: {ControlTemp.setRheostat("fwd_cab_temp",tempSlider.getVal())}
        }
        
        TempModule{
            id: aft
            anchors.left: parent.left
            anchors.right: parent.right
            warningIndicator.status: 0
            description.text: "AFT"
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            tempSlider.onValueChanged: {ControlTemp.setRheostat("aft_cab_temp",tempSlider.getVal())}
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
                id: packs
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
        id: rectangle
        x: 0
        y: -23
        width: 809
        height: 1083
        color: "#00ffffff"
        border.color: "#00ffffff"
        clip: true

        Image {
            id: image
            x: 169
            y: -42
            width: 441
            height: 1083
            source: "../pic/plane.png"
            clip: false
            scale: 1.8
            sourceSize.width: 764
            rotation: -180
            fillMode: Image.PreserveAspectFit
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
            id: suplyFan
            width: 150
            height: 193
            text: ""
            anchors.left: parent.left
            anchors.top: parent.top
            swich2state.onColor: "#ffae00"
            description: "SUPLY\nFAN"
            togled: false
            warningIndicator.warText: "OFF"
            anchors.topMargin: 100
            anchors.leftMargin: 20
            swich2state.textWidthStatus: 20
            swich2state.description: "SUPLY\nFAN"
            swich2state.togled: false
            swich2state.onText: "ALTERNATIVE"
            swich2state.offText: "NORMAL"
            onClicked:{ControlTemp.coolingSwich("supply")}
        }

        Swich2stateWarning{
            id: exhoustFan
            x: 219
            width: 150
            height: 193
            anchors.right: parent.right
            anchors.top: parent.top
            swich2state.onColor: "#ffae00"
            togled: false
            description: "EXHOUST\nFAN"
            warningIndicator.warText: "OFF"
            anchors.topMargin: 100
            anchors.rightMargin: 20
            swich2state.textWidthStatus: 20
            swich2state.onText: "ALTERNATIVE"
            swich2state.offText: "NORMAL"
            swich2state.description: "EXHOUST\nFAN"
            onClicked:{ControlTemp.coolingSwich("exhaust")}
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

    Rectangle {
        id: rectangle4
        x: 404
        y: 161
        width: 430
        height: 2
        color: "#ffffff"
        border.color: "#ffffff"
        border.width: 2
    }

    Rectangle {
        id: rectangle5
        x: 404
        y: 329
        width: 430
        height: 2
        color: "#ffffff"
        border.color: "#ffffff"
        border.width: 2
    }

    Rectangle {
        id: rectangle6
        x: 398
        y: 548
        width: 445
        height: 2
        color: "#ffffff"
        border.color: "#ffffff"
        border.width: 2
        rotation: -13.03
    }

    Connections{
        target:RenderTemp

        function onSetTrim(state){
            trimAir.swich2state.togled=state
        }
        function onSetCooling(name,state){
            if(name==="suply")
                suplyFan.togled=state
            else if(name==="exhoust")
                exhoustFan.togled=state
        }
        function onSetTempControl(name,state){
            /*
            if(name==="cont_cab_temp")
                cont.tempSlider.setVal(state)
            else if(name==="aft_cab_temp")
                aft.tempSlider.setVal(state)
            else if(name==="fwd_cab_temp")
                fwd.tempSlider.setVal(state)
            */
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:2}D{i:4}D{i:5}D{i:6}D{i:7}D{i:9}D{i:11}D{i:10}
D{i:8}D{i:3}D{i:13}D{i:12}D{i:15}D{i:16}D{i:17}D{i:14}D{i:18}D{i:19}D{i:20}D{i:21}
}
##^##*/
