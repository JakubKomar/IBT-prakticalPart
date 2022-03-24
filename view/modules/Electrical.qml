/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:08:47
  * @ Description: electrical module
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

    Connections{
        target:ControlElectrical
    }

    Connections{
        target:RenderElectrical
        function onIndicatorUpdate(name, value){
            switch(name){
            /*
            case "standbyPwr":
                standbyWarning.status=value
                break;
            */
            case "source1":
                sourceOff1.warningIndicator1.status=value
                break;
            case "source2":
                sourceOff2.warningIndicator1.status=value
                break;
            case "grp":
                grdPower.infoIndicator.status=value
                break;
            case "bus1":
                transfer1.status=value
                break;
            case "bus2":
                transfer2.status=value
                break;
            case "gen1":
                gen1Mod.infoIndicator.status=value
                break;
            case "gen2":
                gen2Mod.infoIndicator.status=value
                break;
            case "apuGen":
                apuGenMod.infoIndicator.status=value
                break;
            default:
                break;
            }
        }

        function onSwichUpdate(name, value){
            switch(name){/*
            case "standby_bat":
                stanbySwich.swich3pos.position=value
                break;*/
            case "cross_tie":
                busTransfer.swich2stateAlt.togled=value
                break;
            /*
            case "batteryOn":
                batSwich.swich2stateAlt.togled=value
                break;
            case "disconnect1":
                diconnect1.swich2stateAlt.togled=value
                break;
            case "disconnect2":
                diconnect2.swich2stateAlt.togled=value
                break;*/
            case "ifePassSeat":
                ifePassSeat.togled=value
                break;
            case "cabUtil":
                cabUtil.togled=value
                break;
            default:
                break;
            }
        }

        function onGuardUpdate(name, value){
            switch(name){
                /*
            case "batteryCover":
                batSwich.guard.guarded=value
                break;
            case "standbyPower":
                stanbySwich.guard.guarded=value
                break;
            case "drive1Cover":
                diconnect1.guard.guarded=value
                break;
            case "drive2Cover":
                diconnect2.guard.guarded=value
                break;*/
            case "busTransferCover":
                busTransfer.guard.guarded=value
                break;
            default:
                break;
            }
        }
    }

    Rectangle {
        id: leftSide
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"
        border.width: 2

        Item {
            id: pipes
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.bottomMargin: -54
            anchors.leftMargin: -1
            anchors.topMargin: 54

            Rectangle {
                id: pipe11
                x: 158
                y: 633
                width: 560
                height: 30
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                anchors.horizontalCenterOffset: 8
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                id: pipe
                x: 152
                y: 196
                width: 30
                height: 643
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0

                Rectangle {
                    id: pipe1
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }

            Rectangle {
                id: pipe2
                x: 702
                y: 196
                width: 30
                height: 637
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                Rectangle {
                    id: pipe3
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }

            Rectangle {
                id: pipe4
                x: 423
                y: 686
                width: 30
                height: 137
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                Rectangle {
                    id: pipe5
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }

            Rectangle {
                id: pipe6
                x: 352
                y: 430
                width: 30
                height: 197
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                Rectangle {
                    id: pipe7
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }

            Rectangle {
                id: pipe8
                x: 501
                y: 425
                width: 30
                height: 197
                color: "#ffffff"
                border.color: "#00000000"
                border.width: 0
                Rectangle {
                    id: pipe9
                    x: 2
                    color: "#353535"
                    border.color: "#b9b9b9"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    anchors.rightMargin: 2
                    anchors.leftMargin: 2
                }
            }

            Rectangle {
                id: pipe12
                x: 158
                y: 635
                width: 560
                height: 26
                color: "#353535"
                border.color: "#00000000"
                border.width: 0
                anchors.horizontalCenterOffset: 8
                anchors.horizontalCenter: parent.horizontalCenter
            }

            WarningIndicator {
                id: transfer1
                x: 97
                y: 608
                radius: 0
                textHeight: 24
                warText: "TRANSFER\nBUS OFF"
            }

            WarningIndicator {
                id: transfer2
                x: 647
                y: 608
                textHeight: 24
                warText: "TRANSFER\nBUS OFF"
            }
        }

        Swich2noStateGen {
            id: gen1Mod
            x: 87
            y: 337
            button1.onClicked:{
                ControlElectrical.togle("gen1_up")
            }
            button2.onClicked:{
                ControlElectrical.togle("gen1_dn")
            }
        }

        Swich2noStateGen {
            id: gen2Mod
            x: 642
            y: 337
            infoIndicator.description: "GEN 2\nOFFBUS"
            button1.onClicked:{
                ControlElectrical.togle("gen2_up")
            }
            button2.onClicked:{
                ControlElectrical.togle("gen2_dn")
            }
        }

        SwichesApuGen {
            id: apuGenMod
            y: 337
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter
            button1.onClicked:{
                ControlElectrical.togle("apu_gen1_up")
            }
            button2.onClicked:{
                ControlElectrical.togle("apu_gen1_dn")
            }
            button3.onClicked:{
                ControlElectrical.togle("apu_gen2_up")
            }
            button4.onClicked:{
                ControlElectrical.togle("apu_gen2_dn")
            }
        }

        Swich2noStateGen {
            id: grdPower
            y: 860
            infoIndicator.textHeight: 23
            infoIndicator.description: "GRD POWER\nAVAILABLE"
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter
            button1.onClicked:{
                ControlElectrical.togle("gpu_up")
            }
            button2.onClicked:{
                ControlElectrical.togle("gpu_dn")
            }
        }

        BusGraphRepr {
            id: sourceOff2
            x: 642
            y: 881
            width: 150
            height: 157
            busText: "BUS 2"
        }

        BusGraphRepr {
            id: sourceOff1
            x: 87
            y: 881
            width: 150
            height: 157
        }

        Rectangle {
            id: rectangle6
            y: 611
            width: 249
            height: 168
            color: "#2d2d2d"
            radius: 14
            border.color: "#7f7f7f"
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: text4
                y: 0
                width: 248
                height: 40
                color: "#ffffff"
                text: qsTr("BUS TRANSFER")
                font.letterSpacing: -1.5
                font.pixelSize: 26
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Verdana"

                GuardedSwichAlt {
                    id: busTransfer
                    y: 36
                    swich2stateAlt.textHeight: 23
                    swich2stateAlt.textOn: "AUTO"
                    anchors.horizontalCenter: parent.horizontalCenter
                    guard.onGuard:{
                        ControlElectrical.setGuard("busTransfer")
                    }
                    guard.onUnGuard:{
                        ControlElectrical.setGuard("busTransfer")
                    }
                    swich2stateAlt.button1.onClicked:{
                        ControlElectrical.togle("busTransfer_off")
                    }
                    swich2stateAlt.button2.onClicked:{
                        ControlElectrical.togle("busTransfer_on")
                        ControlElectrical.setGuard("busTransfer")
                    }
                }
            }
        }
    }

    Rectangle {
        id: rightSide
        x: parent.width/2
        y: 0
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"
        border.width: 2
        Rectangle {
            id: dcPart
            x: 0
            y:parent.height/2
            width: parent.width
            height: parent.height/2
            color: "#00ffffff"
            border.color: "#00ffffff"
            border.width: 1
        }

        Rectangle {
            id: acPart
            x: 0
            y: 0
            width: parent.width
            height: parent.height/2
            color: "#00ffffff"
            border.color: "#00ffffff"
            border.width: 2

            Text {
                id: text6
                y: -7
                color: "#ffffff"
                text: qsTr("AC")
                font.pixelSize: 33
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Rectangle {
                id: rectangle
                y: 36
                width: 834
                height: 1
                color: "#ffffff"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: text7
                y: 530
                color: "#ffffff"
                text: qsTr("DC")
                font.pixelSize: 33
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 0
            }

            Rectangle {
                id: rectangle1
                y: 573
                width: 834
                height: 1
                color: "#ffffff"
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
        Swich2state {
            id: cabUtil
            x: 8
            y: 380
            description: "CAB\nUTIL"
        }

        Swich2state {
            id: ifePassSeat
            x: 8
            y: 210
            description: "IFE/PASS\nSEAT"
        }

        WarningIndicator {
            id: warningIndicator7
            x: 13
            y: 686
        }

        WarningIndicator {
            id: warningIndicator8
            x: 13
            y: 593
        }

        WarningIndicator {
            id: warningIndicator9
            x: 13
            y: 101
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:2}D{i:5}D{i:7}D{i:6}D{i:9}D{i:8}D{i:11}D{i:10}
D{i:13}D{i:12}D{i:15}D{i:14}D{i:16}D{i:17}D{i:18}D{i:4}D{i:19}D{i:20}D{i:21}D{i:22}
D{i:23}D{i:24}D{i:27}D{i:26}D{i:25}D{i:3}D{i:29}D{i:31}D{i:32}D{i:33}D{i:34}D{i:30}
D{i:35}D{i:36}D{i:37}D{i:38}D{i:39}D{i:28}
}
##^##*/
