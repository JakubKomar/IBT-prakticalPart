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
        border.color: "#ffffff"
        border.width: 2

        Text {
            id: text2
            x: 350
            y: 8
            color: "#ffffff"
            text: qsTr("Wing anti-ice")
            font.pixelSize: 30
        }

        Swich2stateBasic {
            id: swichWingAntiIce
            x: 135
            y: 162
            swich2state.description: "WING\nANTI-ICE"
            onClicked: {
                ControlAntiIce.swichTogle("wingAntiIce")
            }
        }

        InfoIndicator {
            id: infoCowlValveL
            x: 480
            y: 97
            width: 150
            height: 65
            textHeight: 22
            description: "COWL VALVE\nOPEN"
        }

        InfoIndicator {
            id: infoCowlValveR
            x: 684
            y: 97
            width: 150
            height: 65
            textHeight: 22
            description: "COWL VALVE\nOPEN"
        }

        InfoIndicator {
            id: infoLValve
            x: 72
            y: 97
            description: "L VALVE\nOPEN"
        }

        InfoIndicator {
            id: infoRValve
            x: 212
            y: 97
            height: 65
            description: "R VALVE\nOPEN"
        }

        Swich2stateWarning {
            id: swichEngAntiIceL
            x: 480
            y: 160
            warningIndicator.warText: "COWL \nANTI-ICE"
            description: "ENG 1\nANTI-ICE"
            onClicked: {
                ControlAntiIce.swichTogle("engLAntiIce")
            }
        }

        Swich2stateWarning {
            id: swichEngAntiIceR
            x: 684
            y: 160
            width: 150
            height: 196
            warningIndicator.warText: "COWL \nANTI-ICE"
            description: "ENG 1\nANTI-ICE"
            onClicked: {
                ControlAntiIce.swichTogle("engRAntiIce")
            }
        }
    }
    Rectangle {
        id: rSide
        x: parent.width/2
        y: 0
        width:parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#ffffff"
        border.width: 2

        Text {
            id: text1
            x: 350
            y: 8
            color: "#ffffff"
            text: qsTr("Window heat")
            font.pixelSize: 30
        }

        Swich2stateBasic {
            id: swichHeatL
            x: 251
            y: 560
            swich2state.togled: false
            swich2state.description: "PROBE\nHEAT A"
            onClicked: {
                ControlAntiIce.swichTogle("probeL")
            }
        }

        Swich2stateBasic {
            id: swichHeatR
            x: 475
            y: 560
            swich2state.description: "PROBE\nHEAT B"
            onClicked: {
                ControlAntiIce.swichTogle("probeR")
            }
        }

        CircleButton {
            id: tatTest
            x: 393
            y: 740
            buttText: "TAT\nTEST"
        }

        Column {
            id: column
            x: 95
            y: 512
            width: 144
            height: 261

            WarningIndicator {
                id: warningCaptL
                warText: "CAPT\nPITOT"
            }

            WarningIndicator {
                id: warningElevL
                warText: "L ELEV\nPITOT"
            }

            WarningIndicator {
                id: warningAlphaL
                warText: "L ALPHA\nPITOT"
            }

            WarningIndicator {
                id: warningTempL
                warText: "TEMP\nPROBE"
            }
        }

        Column {
            id: column1
            x: 631
            y: 512
            width: 146
            height: 268

            WarningIndicator {
                id: warningFOR
                warText: "F/O\nPITOT"
            }

            WarningIndicator {
                id: warningElevR
                warText: "R ELEV\nPITOT"
            }

            WarningIndicator {
                id: warningAlphaR
                warText: "R ALPHA\nPITOT"
            }

            WarningIndicator {
                id: warningAuxR
                warText: "AUX\nPITOT"
            }
        }

        AntiIceSwich {
            id: swichWinHeatSideL
            x: 31
            y: 102
            onClicked: {
                ControlAntiIce.swichTogle("sideWindL")
            }
        }

        AntiIceSwich {
            id: swichWinHeatFwdL
            x: 179
            y: 102
            swich2stateWarning.description: "FWD"
            onClicked: {
                ControlAntiIce.swichTogle("fwdWindL")
            }
        }

        AntiIceSwich {
            id: swichWinHeatFwdR
            x: 539
            y: 102
            swich2stateWarning.description: "FWD"
            onClicked: {
                ControlAntiIce.swichTogle("fwdWindR")
            }
        }

        AntiIceSwich {
            id: swichWinHeatSideR
            x: 687
            y: 102
            onClicked: {
                ControlAntiIce.swichTogle("sideWindR")
            }
        }

        Swich2noStateVert {
            id: winHeatTester
            x: 363
            y: 143
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
    }
    Connections{
        target:ControlAntiIce

    }
    Connections{
        target:AntiIceRender
        function onSetAnnunciator(name,state){
            switch(name){
                case "lHeatSide":{
                    swichWinHeatSideL.stateIndicator.status=state
                break;
                }
                case "lHeatFwd":{
                    swichWinHeatFwdL.stateIndicator.status=state
                break;
                }
                case "rHeatFwd":{
                    swichWinHeatFwdR.stateIndicator.status=state
                break;
                }
                case "rHeatSide":{
                    swichWinHeatSideR.stateIndicator.status=state
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
                break;
                }
                case "cowl_ice_on_1":{
                    infoCowlValveR.status=state
                break;
                }
                case "wing_ice_on_L":{
                    infoLValve.status=state
                break;
                }
                case "wing_ice_on_R":{
                    infoRValve.status=state
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
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:1}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:16}D{i:17}D{i:18}D{i:19}D{i:15}D{i:21}D{i:22}D{i:23}D{i:24}
D{i:20}D{i:25}D{i:26}D{i:27}D{i:28}D{i:29}D{i:10}D{i:30}D{i:31}
}
##^##*/
