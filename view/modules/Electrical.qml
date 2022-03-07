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
                case "drive1":
                    drive1.status=value
                break;
                case "drive2":
                    drive2.status=value
                break;
                case "standbyPwr":
                    standbyWarning.status=value
                break;
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
                /*
                case "":
                    =value
                break;
                */

            }
        }

        function onSwichUpdate(name, value){
            switch(name){
                case "standby_bat":
                    stanbySwich.swich3pos.position=value
                break;
                case "cross_tie":
                    busTransfer.swich2stateAlt.togled=value
                break;
                case "batteryOn":
                    batSwich.swich2stateAlt.togled=value
                break;
                case "disconnect1":
                    diconnect1.swich2stateAlt.togled=value
                break;
                case "disconnect2":
                    diconnect2.swich2stateAlt.togled=value
                break;
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
                break;
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
        border.color: "#ffffff"
        border.width: 2

        Item {
            id: pipes
            anchors.fill: parent

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
            y: 283
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
            y: 283
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
            y: 283
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
            y: 806
            infoIndicator.textHeight: 23
            infoIndicator.description: "GRD POWER\nAVAILABLE"
            anchors.horizontalCenterOffset: 0
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
            y: 827
            width: 150
            height: 157
            busText: "BUS 2"
        }

        BusGraphRepr {
            id: sourceOff1
            x: 87
            y: 827
            width: 150
            height: 157
        }

        Rectangle {
            id: rectangle2
            x: 35
            y: 47
            width: 248
            height: 201
            color: "#2d2d2d"
            radius: 14
            border.color: "#7f7f7f"

            WarningIndicator {
                id: drive1
                y: 154
                width: 140
                height: 43
                radius: 13
                anchors.horizontalCenter: parent.horizontalCenter
                warText: "DRIVE"
            }

            GuardedSwichAlt {
                id: diconnect1
                x: 0
                y: 29
                guard.text1.color: "#4c250000"
                swich2stateAlt.togled: false
                swich2stateAlt.textOn: "DISCONECT"
                swich2stateAlt.textHeight: 13
                guard.guardCol: "#c95c0000"
                swich2stateAlt.textOff: "NORMAL"
                guarded: true
                guardCol: "#d0ff0000"

                guard.onGuard:{
                    ControlElectrical.setGuard("disconect1")
                }
                guard.onUnGuard:{
                    ControlElectrical.setGuard("disconect1")
                }
                swich2stateAlt.button1.onClicked:{
                    ControlElectrical.togle("disconect1_off")
                }
                swich2stateAlt.button2.onClicked:{
                   ControlElectrical.togle("disconect1")
                }

            }

            Text {
                id: text1
                x: 0
                y: 0
                width: 248
                height: 34
                color: "#ffffff"
                text: qsTr("DISCONNECT GEN1")
                font.letterSpacing: -1.5
                font.pixelSize: 26
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
            }
        }

        Rectangle {
            id: rectangle4
            x: 593
            y: 47
            width: 248
            height: 201
            color: "#2d2d2d"
            radius: 14
            border.color: "#7f7f7f"
            WarningIndicator {
                id: drive2
                y: 154
                width: 140
                height: 43
                radius: 13
                anchors.horizontalCenter: parent.horizontalCenter
                warText: "DRIVE"
            }

            GuardedSwichAlt {
                id: diconnect2
                x: 0
                y: 29
                guard.text1.color: "#4c250000"
                swich2stateAlt.togled: false
                swich2stateAlt.textHeight: 13
                swich2stateAlt.textOn: "DISCONECT"
                swich2stateAlt.textOff: "NORMAL"
                guard.guardCol: "#c95c0000"
                guardCol: "#d0590101"
                guard.onGuard:{
                    ControlElectrical.setGuard("disconect2")
                }
                guard.onUnGuard:{
                    ControlElectrical.setGuard("disconect2")
                }
                swich2stateAlt.button1.onClicked:{
                    ControlElectrical.togle("disconect2_off")
                }
                swich2stateAlt.button2.onClicked:{
                   ControlElectrical.togle("disconect2")
                }
            }

            Text {
                id: text2
                x: 0
                y: 0
                width: 248
                height: 34
                color: "#ffffff"
                text: qsTr("DISCONNECT GEN1")
                font.letterSpacing: -1.5
                font.pixelSize: 26
                horizontalAlignment: Text.AlignHCenter
                font.family: "Verdana"
            }
        }

        Rectangle {
            id: rectangle5
            y: 8
            width: 300
            height: 201
            color: "#2d2d2d"
            radius: 14
            border.color: "#7f7f7f"
            anchors.horizontalCenter: parent.horizontalCenter
            WarningIndicator {
                id: standbyWarning
                y: 154
                width: 140
                height: 43
                radius: 13
                textHeight: 20
                anchors.horizontalCenter: parent.horizontalCenter
                warText: "STANDBY\nPWR OFF"
            }

            Text {
                id: text3
                y: 0
                width: 248
                height: 34
                color: "#ffffff"
                text: qsTr("STANDBY POWER")
                font.letterSpacing: -1.5
                font.pixelSize: 26
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Verdana"
            }

            Guarded3Swich {
                id: stanbySwich
                y: 28
                height: 130
                anchors.left: parent.left
                anchors.right: parent.right
                swich3pos.position: 2
                guard.guarded: true
                swich3pos.textWidth: 28
                swich3pos.textPos3: "AUTO"
                swich3pos.textPos2: "OFF"
                swich3pos.textPos1: "BAT"
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                guard.onGuard:{
                    ControlElectrical.setGuard("stanbySwich")
                }
                guard.onUnGuard:{
                    ControlElectrical.setGuard("stanbySwich")
                }
                swich3pos.button2.onClicked:{
                    ControlElectrical.togle("stanbySwich")
                                    }
                swich3pos.button3.onClicked:{
                    ControlElectrical.togle("stanbySwich_off")
                    ControlElectrical.setGuard("stanbySwich")
                }
            }
        }

        Rectangle {
            id: rectangle6
            y: 557
            width: 249
            height: 168
            color: "#2d2d2d"
            radius: 14
            border.color: "#7f7f7f"
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                id: text4
                y: 0
                width: 248
                height: 40
                color: "#ffffff"
                text: qsTr("STANDBY POWER")
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
        border.color: "#ffffff"
        border.width: 2
        Rectangle {
            id: dcPart
            x: 0
            y: 0
            width: parent.width/2
            height: parent.height
            color: "#00ffffff"
            border.color: "#ffffff"
            border.width: 2

            Rectangle {
                id: rectangle7
                x: -562
                y: 845
                width: 249
                height: 168
                color: "#2d2d2d"
                radius: 14
                border.color: "#7f7f7f"
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                Text {
                    id: text5
                    y: 0
                    width: 248
                    height: 40
                    color: "#ffffff"
                    text: qsTr("BATERY ")
                    font.letterSpacing: -1.5
                    font.pixelSize: 26
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.family: "Verdana"
                    GuardedSwichAlt {
                        id: batSwich
                        y: 36
                        anchors.horizontalCenter: parent.horizontalCenter
                        swich2stateAlt.textOn: "ON"
                        guard.onGuard:{
                            ControlElectrical.setGuard("batSwich")
                        }
                        guard.onUnGuard:{
                            ControlElectrical.setGuard("batSwich")
                        }
                        swich2stateAlt.button1.onClicked:{
                            ControlElectrical.togle("battery_off")
                        }
                        swich2stateAlt.button2.onClicked:{
                            ControlElectrical.togle("battery_on")
                            ControlElectrical.setGuard("batSwich")
                        }
                    }
                }
            }
        }

        Rectangle {
            id: acPart
            x: parent.width/2
            y: 0
            width: parent.width/2
            height: parent.height
            color: "#00ffffff"
            border.color: "#ffffff"
            border.width: 2
        }
        Swich2state {
            id: cabUtil
            x: 503
            y: 858
        }

        Swich2state {
            id: ifePassSeat
            x: 669
            y: 858
        }

        WarningIndicator {
            id: warningIndicator7
            x: 266
            y: 531
        }

        WarningIndicator {
            id: warningIndicator8
            x: 420
            y: 531
        }

        WarningIndicator {
            id: warningIndicator9
            x: 577
            y: 531
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:2}D{i:5}D{i:7}D{i:6}D{i:9}D{i:8}D{i:11}D{i:10}
D{i:13}D{i:12}D{i:15}D{i:14}D{i:16}D{i:17}D{i:18}D{i:4}D{i:19}D{i:20}D{i:21}D{i:22}
D{i:23}D{i:24}D{i:26}D{i:27}D{i:28}D{i:25}D{i:30}D{i:31}D{i:32}D{i:29}D{i:34}D{i:35}
D{i:36}D{i:33}D{i:39}D{i:38}D{i:37}D{i:3}D{i:44}D{i:43}D{i:42}D{i:41}D{i:45}D{i:46}
D{i:47}D{i:48}D{i:49}D{i:50}D{i:40}
}
##^##*/
