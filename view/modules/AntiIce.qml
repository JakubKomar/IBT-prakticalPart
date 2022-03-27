/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:07:15
  * @ Description: anti ice module 
 */

import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:antiIce
    width: 1750
    height: 1060
    color: "#000000"
    border.color: "#00000000"

    Rectangle {
        id: lSide
        x: 0
        y: 0
        width:parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"
        border.width: 2

        Item{
            id:ilustration
            anchors.fill: parent
            antialiasing: true
            layer.samples: 8
            layer.enabled: true          
            Image {
                id: base
                anchors.fill: parent
                source: "../pic/antiice/base.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: eng1
                anchors.fill: parent
                source: "../pic/antiice/eng1.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: eng2
                anchors.fill: parent
                source: "../pic/antiice/eng2.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sourceBleed
                anchors.fill: parent
                source: "../pic/antiice/sourceBleed.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: win1
                anchors.fill: parent
                source: "../pic/antiice/win1.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: win2
                anchors.fill: parent
                source: "../pic/antiice/win2.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: win3
                anchors.fill: parent
                source: "../pic/antiice/win3.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: win4
                anchors.fill: parent
                source: "../pic/antiice/win4.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: wingL
                anchors.fill: parent
                source: "../pic/antiice/wingL.png"
                fillMode: Image.PreserveAspectFit
            }



            Image {
                id: wingR
                anchors.fill: parent
                source: "../pic/antiice/wingR.png"
                fillMode: Image.PreserveAspectFit
            }

            MiniValve {
                id: eng1Valve
                x: 306
                y: 417
                rotation: 90
            }

            MiniValve {
                id: eng2Valve
                x: 540
                y: 417
                rotation: 90
            }

            MiniValve {
                id: wing1Valve
                x: 257
                y: 503
                rotation: -210
            }

            MiniValve {
                id: wing2Valve
                x: 583
                y: 502
                rotation: 210
            }

            TextCust {
                id: textCust
                x: 406
                y: 356
                text: "BLEED\nSOURCES"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                level: 3
                color:Styles.blueDark
            }

            Rectangle {
                id: rectangle
                x: 559
                y: 399
                width: 68
                height: 1
                color: "gray"
                rotation: -41.19
            }

            Rectangle {
                id: rectangle1
                x: 603
                y: 489
                width: 76
                height: 1
                color: "#808080"
                rotation: -21.19
            }

            Rectangle {
                id: rectangle2
                x: 252
                y: 399
                width: 68
                height: 1
                color: "#808080"
                rotation: 41.19
            }

            Rectangle {
                id: rectangle3
                x: 192
                y: 490
                width: 76
                height: 1
                color: "#808080"
                rotation: 21.19
            }
        }

        InfoIndicator {
            id: infoCowlValveL
            x: 157
            y: 349
            width: 110
            height: 67
            indicator.value: 0
            textHeight: 22
            description: "COWL VALVE\nOPEN"
        }

        InfoIndicator {
            id: infoCowlValveR
            x: 610
            y: 349
            width: 110
            height: 67
            status: 0
            indicator.value: 0
            textHeight: 22
            description: "COWL VALVE\nOPEN"
        }

        InfoIndicator {
            id: infoLValve
            x: 157
            y: 415
            width: 110
            height: 67
            status: 0
            description: "L VALVE\nOPEN"
        }

        InfoIndicator {
            id: infoRValve
            x: 610
            y: 415
            width: 110
            height: 67
            indicator.value: 0
            description: "R VALVE\nOPEN"
        }

        ModuleDescription {
            id: moduleDescription1
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "ANTI ICE overview"
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        Column {
            id: column
            y: 84
            width: 112
            height: 164
            anchors.horizontalCenterOffset: -150
            anchors.horizontalCenter: parent.horizontalCenter

            WarningIndicator {
                id: warningCaptL
                width: 110
                height: 55
                indicator.borderOnlyWhenTurned: true
                status: 0
                warText: "CAPT\nPITOT"
            }

            WarningIndicator {
                id: warningElevL
                width: 110
                height: 55
                indicator.borderOnlyWhenTurned: true
                status: 0
                warText: "L ELEV\nPITOT"
            }

            WarningIndicator {
                id: warningAlphaL
                width: 110
                height: 55
                indicator.borderOnlyWhenTurned: true
                status: 0
                warText: "L ALPHA\nPITOT"
            }
        }

        Column {
            id: column1
            y: 84
            width: 113
            height: 169
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 150

            WarningIndicator {
                id: warningFOR
                width: 110
                height: 55
                indicator.value: 0
                indicator.borderOnlyWhenTurned: true
                status: 0
                warText: "F/O\nPITOT"
            }

            WarningIndicator {
                id: warningElevR
                width: 110
                height: 55
                indicator.borderOnlyWhenTurned: true
                status: 0
                warText: "R ELEV\nPITOT"
            }

            WarningIndicator {
                id: warningAlphaR
                width: 110
                height: 55
                indicator.borderOnlyWhenTurned: true
                status: 0
                warText: "R ALPHA\nPITOT"
            }
        }

        WarningIndicator {
            id: warningTempL
            x: 233
            y: 778
            width: 110
            height: 55
            indicator.borderOnlyWhenTurned: true
            status: 0
            warText: "TEMP\nPROBE"
        }

        WarningIndicator {
            id: warningAuxR
            x: 533
            y: 778
            width: 110
            height: 55
            indicator.borderOnlyWhenTurned: true
            status: 0
            warText: "AUX\nPITOT"
        }
    }

    Rectangle {
        id: rSide
        x: parent.width/2
        y: 0
        width:parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"
        border.width: 2

        AntiIceSwich {
            id: swichWinHeatSideL
            x: 10
            y: 410
            onTogled: false
            onClicked: {
                ControlAntiIce.swichTogle("sideWindL")
            }
        }

        AntiIceSwich {
            id: swichWinHeatFwdL
            x: 159
            y: 410
            swich2stateWarning.description: "FWD"
            onClicked: {
                ControlAntiIce.swichTogle("fwdWindL")
            }
        }

        AntiIceSwich {
            id: swichWinHeatFwdR
            x: 568
            y: 410
            swich2stateWarning.description: "FWD"
            onClicked: {
                ControlAntiIce.swichTogle("fwdWindR")
            }
        }

        AntiIceSwich {
            id: swichWinHeatSideR
            x: 715
            y: 410
            onClicked: {
                ControlAntiIce.swichTogle("sideWindR")
            }
        }

        Swich2noStateVert {
            id: winHeatTester
            y: 410
            width: 150
            height: 197
            visible: true
            anchors.horizontalCenter: parent.horizontalCenter
            text2: "PWR"
            text1: "OVHT"
            button1.onPressed: {
                ControlAntiIce.swichTogle("ovhtTest")
            }
            button2.onPressed: {
                ControlAntiIce.swichTogle("pwrTest")
            }
            button1.onReleased: {
                reset()
            }
            button2.onReleased: {
                reset()
            }
            function reset(){
                ControlAntiIce.swichTogle("testReset")
            }

        }

        ModuleDescription {
            id: moduleDescription
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "WINDOWS HEAT"
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        Swich2stateBasic {
            id: swichHeatL
            y: 775
            width: 150
            height: 150
            anchors.left: parent.left
            anchors.leftMargin: 10
            swich2state.togled: false
            swich2state.description: "PROBE\nHEAT A"
            onClicked: {
                ControlAntiIce.swichTogle("probeL")
            }
        }

        Swich2stateBasic {
            id: swichHeatR
            x: 159
            y: 775
            width: 150
            height: 150
            swich2state.description: "PROBE\nHEAT B"
            onClicked: {
                ControlAntiIce.swichTogle("probeR")
            }
        }

        ModuleDescription {
            id: moduleDescription2
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "ENGINE HEAT"
            anchors.topMargin: 730
            anchors.rightMargin: 10
            anchors.leftMargin: 568
        }

        ModuleDescription {
            id: moduleDescription3
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "WING ANTI-ice"
            anchors.topMargin: 730
            anchors.rightMargin: 362
            anchors.leftMargin: 363
        }

        ModuleDescription {
            id: moduleDescription4
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "Probe heat"
            anchors.topMargin: 730
            anchors.rightMargin: 566
            anchors.leftMargin: 10
        }

        Swich2stateWarning {
            id: swichEngAntiIceL
            x: 568
            y: 775
            width: 150
            height: 212
            warningIndicator.warText: "COWL \nANTI-ICE"
            description: "ENG 1\nANTI-ICE"
            onClicked: {
                ControlAntiIce.swichTogle("engLAntiIce")
            }
        }

        Swich2stateWarning {
            id: swichEngAntiIceR
            x: 715
            y: 775
            width: 150
            height: 212
            anchors.right: parent.right
            anchors.rightMargin: 10
            warningIndicator.warText: "COWL \nANTI-ICE"
            description: "ENG 1\nANTI-ICE"
            onClicked: {
                ControlAntiIce.swichTogle("engRAntiIce")
            }
        }

        Swich2stateBasic {
            id: swichWingAntiIce
            x: -75
            y: 775
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            swich2state.description: "WING\nANTI-ICE"
            onClicked: {
                ControlAntiIce.swichTogle("wingAntiIce")
            }
        }

        TextCust {
            id: textCust1
            y: 368
            text: "TESTER"
            anchors.horizontalCenter: parent.horizontalCenter
            level: 2
            color:Styles.blueDark
        }

        Item {
            id: item1
            y: 84
            height: 301
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Image {
                id: winBase
                anchors.fill: parent
                source: "../pic/antiice/windows/base.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: win1B
                anchors.fill: parent
                source: "../pic/antiice/windows/1.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: win2B
                anchors.fill: parent
                source: "../pic/antiice/windows/2.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: win3B
                anchors.fill: parent
                source: "../pic/antiice/windows/3.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: win4B
                anchors.fill: parent
                source: "../pic/antiice/windows/4.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        ModuleDescription {
            id: moduleDescription5
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "ANTI ICE CONTROLER"
            anchors.topMargin: 665
            anchors.rightMargin: -1
            anchors.leftMargin: 1
        }

    }
    Connections{
        target:ControlAntiIce

    }
    Connections{
        target:AntiIceRender
        function onSetAnnunciator(name,state){
            switch(name){
            case "lHeatSide":{
                swichWinHeatSideL.onTogled=state
                win1.visible=state
                win1B.visible=state
                break;
            }
            case "lHeatFwd":{
                swichWinHeatFwdL.onTogled=state
                win2.visible=state
                win2B.visible=state
                break;
            }
            case "rHeatFwd":{
                swichWinHeatFwdR.onTogled=state
                win3.visible=state
                win3B.visible=state
                break;
            }
            case "rHeatSide":{
                swichWinHeatSideR.onTogled=state
                win4.visible=state
                win4B.visible=state
                break;
            }
            case "ovhtLf":{
                swichWinHeatFwdL.swich2stateWarning.warningIndicator.status=state
                break;
            }
            case "ovhtLs":{
                swichWinHeatSideL.swich2stateWarning.warningIndicator.status=state
                break;
            }
            case "ovhtRf":{
                swichWinHeatFwdR.swich2stateWarning.warningIndicator.status=state
                break;
            }
            case "ovhtRs":{
                swichWinHeatSideR.swich2stateWarning.warningIndicator.status=state
                break;
            }
            case "capt_pitot_off":{
                warningCaptL.status=state
                break;
            }
            case "capt_alpha":{
                warningAlphaL.status=state
                break;
            }
            case "capt_elev":{
                warningElevL.status=state
                break;
            }
            case "capt_temp":{
                warningTempL.status=state
                break;
            }
            case "fo_pitot_off":{
                warningFOR.status=state
                break;
            }
            case "fo_alpha":{
                warningAlphaR.status=state
                break;
            }
            case "fo_elev":{
                warningElevR.status=state
                break;
            }
            case "fo_aux":{
                warningAuxR.status=state
                break;
            }
            case "cowl_ice_on_0":{
                infoCowlValveL.status=state
                eng1Valve.open=state
                break;
            }
            case "cowl_ice_on_1":{
                infoCowlValveR.status=state
                eng2Valve.open=state
                break;
            }
            case "wing_ice_on_L":{
                infoLValve.status=state
                wing1Valve.open=state
                break;
            }
            case "wing_ice_on_R":{
                infoRValve.status=state
                wing2Valve.open=state
                break;
            }
            case "cowl_ice_0":{
                swichEngAntiIceL.warningIndicator.status=state
                break;
            }
            case "cowl_ice_1":{
                swichEngAntiIceR.warningIndicator.status=state
                break;
            }
            default:{}
            }
        }
        function onSetSwich(name,state){
            switch(name){
            case "sideL":{
                swichWinHeatSideL.swich2stateWarning.togled=state
                break;
            }
            case "fwdL":{
                swichWinHeatFwdL.swich2stateWarning.togled=state
                break;
            }
            case "fwdR":{
                swichWinHeatFwdR.swich2stateWarning.togled=state
                break;
            }
            case "sideR":{
                swichWinHeatSideR.swich2stateWarning.togled=state
                break;
            }
            case "heatL":{
                swichHeatL.swich2state.togled=state
                break;
            }
            case "heatR":{
                swichHeatR.swich2state.togled=state
                break;
            }
            case "wingHeat":{
                swichWingAntiIce.swich2state.togled=state
                break;
            }
            case "engHeatR":{
                swichEngAntiIceR.swich2state.togled=state
                break;
            }
            case "engHeatL":{
                swichEngAntiIceL.swich2state.togled=state
                break;
            }

            default:{}
            }
        }
        function onSetImg(name,state){
            switch(name){
                case "center":{
                    sourceBleed.visible=state
                    break;
                }
                case "wingL":{
                    wingL.visible=state
                    break;
                }
                case "wingR":{
                    wingR.visible=state
                    break;
                }
                case "eng1":{
                    eng1.visible=state
                    break;
                }
                case "eng2":{
                    eng2.visible=state
                    break;
                }

            default:{}
            }
        }
    }

    HalfTransparentBorder {
        id: halfTransparentBorder
        x: 874
        y: 802
        width: 1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        grad2: "gray"
        vert: true
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }




}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:2}D{i:22}
D{i:23}D{i:24}D{i:25}D{i:26}D{i:28}D{i:29}D{i:30}D{i:27}D{i:32}D{i:33}D{i:34}D{i:31}
D{i:35}D{i:36}D{i:1}D{i:38}D{i:39}D{i:40}D{i:41}D{i:42}D{i:43}D{i:44}D{i:45}D{i:46}
D{i:47}D{i:48}D{i:49}D{i:50}D{i:51}D{i:52}D{i:54}D{i:55}D{i:56}D{i:57}D{i:58}D{i:53}
D{i:59}D{i:37}D{i:60}D{i:61}D{i:62}
}
##^##*/
