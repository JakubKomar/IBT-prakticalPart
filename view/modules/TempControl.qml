/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:12:04
  * @ Description: temperature control
 */

import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:tempControl
    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"
    antialiasing: true
    layer.samples: 8
    layer.enabled: true

    Connections{
        target:ControlTemp
    }

    Item{
        id:rightSide
        width: parent.width/2
        x:parent.width/2
        height:parent.height

        Rectangle {
            id: rectangle12
            x: 707
            y: 862
            width: 123
            height: 1
            color: "#ffffff"
            border.color: "#ffffff"
            border.width: 2
        }

        Item {
            id: item1
            x: 796
            y: 110
            width: 74
            height: 1017

            Rectangle {
                id: rectangle10
                x: 25
                y: 40
                width: 20
                height: 896
                color: "#808080"
                border.color: "#00a5a5a5"
                border.width: 2
            }

            Rectangle {
                id: rectangle8
                x: -24
                y: 226
                width: 69
                height: 21
                color: "#0f0f0f"
                border.color: "#808080"
                border.width: 1
            }


            Rectangle {
                id: rectangle7
                x: -24
                y: 40
                width: 69
                height: 21
                color: "#0f0f0f"
                border.color: "#808080"
                border.width: 1
            }

            Rectangle {
                id: rectangle9
                x: -24
                y: 410
                width: 69
                height: 21
                color: "#0f0f0f"
                border.color: "#808080"
                border.width: 1
            }

            Rectangle {
                id: rectangle3
                x: 26
                y: 41
                width: 18
                height: 895
                color: "#0f0f0f"
                border.color: "#00a5a5a5"
                border.width: 2
            }

            Valve {
                id: trimAirValve
                x: 0
                y: 716
                open: false
            }

            Rectangle {
                id: rectangle11
                x: -6
                y: 869
                width: 82
                height: 76
                color: "black"
                radius: 10
                border.color: "gray"

                TextCust {
                    id: textCust
                    color:Styles.blueDark
                    text: "BLEED\nAIR"
                    anchors.fill: parent
                    font.letterSpacing: -2.5
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 2
                }
            }

            Rectangle {
                id: rectangle13
                x: -1210
                y: 46
                width: 556
                height: 10
                color: "#0f0f0f"
                border.color: "gray"
                border.width: 1
            }

            Rectangle {
                id: rectangle14
                x: -1229
                y: 232
                width: 575
                height: 10
                color: "#0f0f0f"
                border.color: "#808080"
                border.width: 1
            }

            Rectangle {
                id: rectangle15
                x: -1229
                y: 416
                width: 575
                height: 10
                color: "#0f0f0f"
                border.color: "#808080"
                border.width: 1
            }

        }

        Column {
            id: column
            height: 659
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 30
            anchors.leftMargin: 0
            anchors.topMargin: 41
            spacing: 13
            rotation: 0

            TempModule{
                id: cont
                anchors.left: parent.left
                anchors.right: parent.right
                verticaIndicatorDouble.value1: 21.3
                verticaIndicatorDouble.value2: 20.2
                warningIndicator.status: 0
                verticaIndicatorDouble.text2.horizontalAlignment: Text.AlignHCenter
                verticaIndicatorDouble.text2.text: "DUC"
                description.text: "CONT"
                verticaIndicatorDouble.enableSecond: false
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                tempSlider.onValueChanged: {ControlTemp.setRheostat("cont_cab_temp",tempSlider.getVal())}
            }
            HalfTransparentBorder {
                id: halfTransparentBorder1
                anchors.left: parent.left
                anchors.right: parent.right
                grad2: "gray"
                anchors.leftMargin: 0
                anchors.rightMargin: 0
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

            HalfTransparentBorder {
                id: halfTransparentBorder2
                anchors.left: parent.left
                anchors.right: parent.right
                grad2: "gray"
                anchors.rightMargin: 0
                anchors.leftMargin: 0
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


            HalfTransparentBorder {
                id: halfTransparentBorder3
                anchors.left: parent.left
                anchors.right: parent.right
                grad2: "gray"
                anchors.leftMargin: 0
                anchors.rightMargin: 0
            }

            Rectangle {
                id: rectangle1
                height: 92
                color: "#00ffffff"
                border.color: "#00484848"
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
                    value1: 25.3
                    text2.text: "L"
                    text1.text: "R"
                    anchors.rightMargin: 0
                    anchors.leftMargin: 112
                }

                Rectangle {
                    id: rectangle2
                    width: 91
                    color: "#00ffffff"
                    border.color: "#00484848"
                    border.width: 2
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    TextCust {
                        id: text2
                        color: Styles.blueDark
                        text: qsTr("PACK")
                        anchors.fill: parent
                        font.pixelSize: 27
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: -20
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        font.capitalization: Font.AllUppercase
                    }
                }
            }



        }

        Swich2stateBasic{
            id: trimAir
            x: 575
            y: 783
            width: 150
            height: 147
            text: "T"
            anchors.right: parent.right
            anchors.rightMargin: 150
            swich2state.onText: "ON"
            swich2state.togled: false
            swich2state.offText: "OFF"
            swich2state.description: "TRIM\nAIR\nVALVE"
            onClicked:{ControlTemp.trimAir()}
        }

        Rectangle {
            id: cooling
            y: 741
            width: 323
            height: 253
            color: "#00ffffff"
            border.color: "#00ffffff"
            border.width: 1
            anchors.left: parent.left
            anchors.leftMargin: 0

            Swich2stateWarning{
                id: suplyFan
                width: 150
                height: 193
                text: ""
                anchors.left: parent.left
                anchors.top: parent.top
                swich2state.active2Bc: Styles.blueDark
                swich2state.active1Bc: "orange"
                swich2state.onText: "ALT"
                description: "SUPLY\nFAN"
                togled: false
                warningIndicator.warText: "OFF"
                anchors.topMargin: 42
                anchors.leftMargin: 0
                swich2state.description: "SUPLY\nFAN"
                swich2state.togled: false
                swich2state.offText: "NORM"
                onClicked:{ControlTemp.coolingSwich("supply")}
            }

            Swich2stateWarning{
                id: exhoustFan
                x: 217
                width: 150
                height: 193
                anchors.right: parent.right
                anchors.top: parent.top
                swich2state.active2Bc: Styles.blueDark
                swich2state.active1Bc: "orange"
                swich2state.onText: "ALT"
                togled: false
                description: "EXHOUST\nFAN"
                warningIndicator.warText: "OFF"
                anchors.topMargin: 42
                anchors.rightMargin: 0
                swich2state.offText: "NORM"
                swich2state.description: "EXHOUST\nFAN"
                onClicked:{ControlTemp.coolingSwich("exhaust")}
            }

            ModuleDescription {
                id: moduleDescription1
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                description: "EQUIPMENT COOLING"
            }
        }

        ModuleDescription {
            id: moduleDescription
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "temperature control"
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

    }

    Item{
        id:leftSide
        width: parent.width/2
        height:parent.height

        Rectangle {
            id: rectangle
            color: "#00ff0061"
            border.color: "#00ffffff"
            anchors.fill: parent
            anchors.topMargin: -8
            antialiasing: true
            layer.samples: 8
            layer.enabled: true

            Image {
                id: image
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                source: "../pic/planeZoneTemp.png"
                anchors.leftMargin: 0
                anchors.rightMargin: 4
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                fillMode: Image.PreserveAspectFit
            }
        }

        ModuleDescription {
            id: moduleDescription2
            x: 875
            y: 0
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "temperature overview"
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        Rectangle {
            id: rectangle16
            x: 637
            y: 527
            width: 108
            height: 8
            color: "#0f0f0f"
            border.color: "#00808080"
            border.width: 1
        }
    }

    Connections{
        target:RenderTemp

        function onSetTrim(state){
            trimAir.swich2state.togled=state
            trimAirValve.open=!state
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
        function onSetTemp(name, value){
            switch(name){
            case"cabDuct":{
                cont.verticaIndicatorDouble.value1=value
                break;
            }
            case"fwdDuct":{
                fwd.verticaIndicatorDouble.value2=value
                break;
            }
            case"fwdCab":{
                fwd.verticaIndicatorDouble.value1=value
                break;
            }
            case"aftDuct":{
                aft.verticaIndicatorDouble.value2=value
                break;
            }
            case"aftCab":{
                aft.verticaIndicatorDouble.value1=value
                break;
            }
            case"packR":{
                packs.value2=value
                break;
            }
            case"packL":{
                packs.value1=value
                break;
            }
            default:{}
            }
        }
        function onSetIndicator(name,state){
            if(name==="cabZone")
                cont.warningIndicator.status=state
            else if(name==="aftZone")
                aft.warningIndicator.status=state
            else if(name==="fwdZone")
                fwd.warningIndicator.status=state
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:1}D{i:3}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:12}
D{i:11}D{i:13}D{i:14}D{i:15}D{i:4}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}D{i:24}
D{i:26}D{i:25}D{i:23}D{i:16}D{i:27}D{i:29}D{i:30}D{i:31}D{i:28}D{i:32}D{i:2}D{i:35}
D{i:34}D{i:36}D{i:37}D{i:33}D{i:38}
}
##^##*/
