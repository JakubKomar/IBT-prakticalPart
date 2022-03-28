/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:11:13
  * @ Description: hydraulic module
 */

import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:hydraulic
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

        Rectangle {
            id: item1
            y: 0
            height: 666
            color: "#00ffffff"
            radius: 13
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Item {
                id: item2
                y: 148
                width: 479
                height: 428
                anchors.horizontalCenterOffset: -5
                anchors.horizontalCenter: parent.horizontalCenter

                Image {
                    id: image
                    anchors.fill: parent
                    source: "../pic/plane.png"
                    rotation: 180
                    fillMode: Image.PreserveAspectFit
                }
            }


            SurfaceIndicatorHorizontal {
                id: splrL
                y: 246
                height: 180
                description: "FLT SPLR"
                minVal: 0
                anchors.horizontalCenterOffset: -152
                anchors.horizontalCenter: parent.horizontalCenter
                indicateMidle: false
                digiValOnLeft: false
                val: 1
            }

            SurfaceIndicatorHorizontal {
                id: aliL
                y: 246
                height: 180
                description: "AIL"
                anchors.horizontalCenterOffset: -245
                anchors.horizontalCenter: parent.horizontalCenter
                digiValOnLeft: false
                val: 1
            }

            SurfaceIndicatorHorizontal {
                id: splrR
                y: 246
                height: 180
                description: "FLT SPLR"
                minVal: 0
                anchors.horizontalCenterOffset: 152
                anchors.horizontalCenter: parent.horizontalCenter
                indicateMidle: false
                digiValOnLeft: true
                val: 1
            }

            SurfaceIndicatorHorizontal {
                id: aliR
                y: 246
                height: 180
                description: "AIL"
                anchors.horizontalCenterOffset: 245
                anchors.horizontalCenter: parent.horizontalCenter
                digiValOnLeft: true
                val: -1
            }

            SurfaceIndicatorHorizontal {
                id: elev
                x: 425
                y: 403
                width: 106
                height: 180
                description: "ELEV"
                val: -1
                digiValOnLeft: true
            }

            SurfaceIndicatorVertical {
                id: rudder
                y: 591
                width: 180
                height: 75
                anchors.horizontalCenterOffset: -1
                description: "RUDDER"
                val: 0.25
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        LandingGearStatus {
            id: rightGear
            x: 443
            y: 339
            width: 60
            height: 60
            description: "RIGHT"
        }

        LandingGearStatus {
            id: leftGear
            x: 377
            y: 339
            width: 60
            height: 60
        }

        LandingGearStatus {
            id: noseGear
            y: 190
            width: 60
            height: 60
            openLock: false
            inTransit: false
            description: "NOSE"
            anchors.horizontalCenter: parent.horizontalCenter
        }
        
        ModuleDescription {
            id: moduleDescription2
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            description: "HYDRAULIC STATUS"
        }


        HydraulicData {
            id: hydraulicData
            x: 324
            y: 36
            anchors.horizontalCenterOffset: 1
        }

        ModuleDescription {
            id: moduleDescription4
            x: -884
            y: 692
            height: 34
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 749
            anchors.leftMargin: 320
            description: "auto break"
            anchors.rightMargin: 320
        }
        BreakTemp {
            id: breakTempL
            y: 589
            anchors.left: parent.left
            orangeVal: 5
            redVal: 9.5
            anchors.leftMargin: 135
            leftBreakTemp: 6.1

            TextCust {
                id: text1
                y: -24
                width: 123
                height: 24
                color: Styles.blueDark
                text: qsTr("BREAK TEMP L")
                level:3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        BreakTemp {
            id: breakTempR
            x: 564
            y: 589
            anchors.right: parent.right
            orangeVal: 5
            redVal: 9.5
            anchors.rightMargin: 127
            leftBreakTemp: 6.1

            TextCust {
                id: text2
                y: -24
                width: 113
                height: 24
                color: Styles.blueDark
                text: qsTr("BREAK TEMP R")
                level:3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }


        Connections{
            target: DashBoardRender
            function onSetAnnunciator(name, val){
                switch(name){
                    case"transit":{
                        flapsIndicator.warningIndicator.status=val
                        break
                    }
                    case"extend":{
                        flapsIndicator.stateIndicator.status=val
                        break
                    }
                    default:{}
                }
            }
            function onSetFlapIndicator(name, val){
                switch(name){
                    case"actState":{
                        flapsIndicator.stateVal=val
                        break
                    }
                    case"setState":{
                        flapsIndicator.setVal=val
                        break
                    }
                default:{}
                }
            }
            function onSetIndicators(name, val){
                switch(name){
                    case"breakLInTemp":{
                        breakTempL.rightBreakTemp=val
                        break
                    }
                    case"breakLOutTemp":{
                        breakTempL.leftBreakTemp=val
                        break
                    }
                    case"breakRInTemp":{
                        breakTempR.leftBreakTemp=val
                        break
                    }
                    case"breakROutTemp":{
                        breakTempR.rightBreakTemp=val
                        break
                    }
                    case"elev":{
                        elev.val=val
                        break
                    }
                    case"ruder":{
                        rudder.val=val
                        break
                    }
                    case"lSplr":{
                        splrL.val=val
                        break
                    }
                    case"rSplr":{
                        splrR.val=val
                        break
                    }
                    case"aliL":{
                        aliL.val=val
                        break
                    }
                    case"aliR":{
                        aliR.val=val
                        break
                    }
                    default:{}
                }
            }
            function onSetGearState(name, val){
                switch(name){
                    case"leftSafe":{
                        leftGear.openLock=val
                        break
                    }
                    case"rightSafe":{
                        rightGear.openLock=val
                        break
                    }
                    case"noseSafe":{
                        noseGear.openLock=val
                        break
                    }
                    case"leftTransit":{
                        leftGear.inTransit=val
                        break
                    }
                    case"rightTransit":{
                        rightGear.inTransit=val
                        break
                    }
                    case"noseTransit":{
                        noseGear.inTransit=val
                        break
                    }
                    default:{}
                }
            }
        }
        Connections{
            target: HydraulicRender
            function onSetSwichMulti(name, val){
                switch(name){
                    case"autoBrake":{
                        autoBreak.position=val
                        break
                    }
                    default:{}
                }
            }
            function onSetSwich(name, val){
                switch(name){
                    case"hydroPump1":{
                        engPump1.swich2state.togled=val
                        break
                    }
                    case"electrPump1":{
                        electrPump1.swich2state.togled=val
                        break
                    }
                    case"hydroPump2":{
                        engPump2.swich2state.togled=val
                        break
                    }
                    case"electrPump2":{
                        electrPump2.swich2state.togled=val
                        break
                    }
                    default:{}
                }
            }
            function onSetAnnuticator(name, val){
                switch(name){
                    case"electrPump1Lp":{
                        electrPump1.warningIndicator.status=val
                        break
                    }
                    case"electrPump2Lp":{
                        electrPump2.warningIndicator.status=val
                        break
                    }
                    case"hydroPump1Lp":{
                        engPump1.warningIndicator.status=val
                        break
                    }
                    case"hydroPump2Lp":{
                        engPump2.warningIndicator.status=val
                        break
                    }
                    case"electrPump1Ov":{
                        electrPump1Ov.status=val
                        break
                    }
                    case"electrPump2Ov":{
                        electrPump2Ov.status=val
                        break
                    }
                    case"autoBreakeDisarm":{
                        autoBreakeDisarm.status=val
                        break
                    }
                    case"antiSkid":{
                        antiSkidInop.status=val
                        break
                    }
                    case"breakPress":{
                        breakPress.value=val
                        break
                    }
                    default:{}
                }
            }
        }
        Connections{
            target: ControlHydraulic
        }

        BreakPress {
            id: breakPress
            x: 600
            y: 748
            width: 220
            height: 220
            anchors.right: parent.right
            anchors.rightMargin: 62
            value: 2600
        }

        ModuleDescription {
            id: moduleDescription5
            x: 67
            y: 709
            height: 34
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 697
            anchors.rightMargin: 590
            anchors.leftMargin: 65
            description: "Flaps"
        }

        ModuleDescription {
            id: moduleDescription6
            x: 340
            y: 761
            height: 34
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "break press"
            anchors.rightMargin: 62
            anchors.topMargin: 697
            anchors.leftMargin: 597
        }

        AutoBreak {
            id: autoBreak
            x: 820
            y: 816
            width: 109
            height: 195
            position: 1
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            onRightEvent: {ControlHydraulic.togleSwich("autobrakeUp")}
            onLeftEvent: {ControlHydraulic.togleSwich("autobrakeDn")}
        }

        Row {
            id: row
            x: 587
            y: 970
            width: 236
            height: 80
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10

            WarningIndicator {
                id: autoBreakeDisarm
                width: 116
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                status: 0
                warText: "AUTO BRAKE\nDISARM"
            }

            WarningIndicator {
                id: antiSkidInop
                width: 116
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                status: 0
                warText: "ANTI\nSKID\ninop"
            }

        }

        FlapsIndicator {
            id: flapsIndicator
            x: -291
            y: 773
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.leftMargin: 65
        }
    }

    HalfTransparentBorder {
        id: halfTransparentBorder
        width: 1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        grad2: "gray"
        vert: true
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
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

        Item {
            id: item3
            x: 0
            height: 613
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 439
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Rectangle {
                id: rectangle8
                x: 558
                y: 237
                width: 146
                height: 26
                color: "#ffffff"
            }

            Rectangle {
                id: rectangle2
                x: 318
                y: 111
                width: 26
                height: 274
                color: "#0f0f0f"
                border.color: "#ffffff"
            }

            Rectangle {
                id: rectangle3
                x: 533
                y: 111
                width: 26
                height: 285
                color: "#0f0f0f"
                border.color: "#ffffff"
            }

            Rectangle {
                id: rectangle4
                x: 703
                y: 237
                width: 26
                height: 159
                color: "#0f0f0f"
                border.color: "#ffffff"
            }

            Rectangle {
                id: rectangle5
                x: 156
                y: 237
                width: 26
                height: 159
                color: "#0f0f0f"
                border.color: "#ffffff"
            }

            Rectangle {
                id: rectangle9
                x: 534
                y: 238
                width: 170
                height: 24
                color: "#0f0f0f"
            }

            Rectangle {
                id: rectangle6
                x: 181
                y: 237
                width: 138
                height: 26
                color: "#ffffff"

                Rectangle {
                    id: rectangle7
                    x: -24
                    y: 1
                    width: 182
                    height: 24
                    color: "#0f0f0f"
                }
            }

            Swich2stateWarning {
                id: electrPump1
                x: 255
                y: 362
                description: "ELEC 2"
                onClicked: {ControlHydraulic.togleSwich("electroPump1")}
            }

            Swich2stateWarning {
                id: electrPump2
                x: 470
                y: 362
                description: "ELECT 1"
                onClicked: {ControlHydraulic.togleSwich("electroPump2")}
            }

            Swich2stateWarning {
                id: engPump2
                x: 637
                y: 362
                description: "ENG 2"
                onClicked: {ControlHydraulic.togleSwich("hydrPump2")}
            }

            WarningIndicator {
                id: electrPump2Ov
                x: 470
                y: 557
                width: 150
                height: 56
                status: 0
                warText: "OVERHEAT"
            }

            Swich2stateWarning {
                id: engPump1
                x: 91
                y: 362
                description: "ENG 1"
                onClicked: {ControlHydraulic.togleSwich("hydrPump1")}
            }

            WarningIndicator {
                id: electrPump1Ov
                x: 255
                y: 557
                width: 150
                height: 56
                status: 0
                warText: "OVERHEAT"
            }

            Rectangle {
                id: rectangle1
                x: 465
                y: 8
                width: 160
                height: 107
                color: "#000000"
                radius: 10
                border.color: "#565656"
                anchors.right: parent.right
                anchors.rightMargin: 250
                TextCust {
                    id: textCust2
                    color: Styles.blueDark
                    text: "hydraulic\nsystem\nb"
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 2
                }
            }

            Rectangle {
                id: rectangle
                x: 250
                y: 8
                width: 160
                height: 107
                color: "#000000"
                radius: 10
                border.color: "#565656"
                anchors.left: parent.left
                anchors.leftMargin: 250

                TextCust {
                    id: textCust
                    color: Styles.blueDark
                    text: "hydraulic\nsystem\na"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 1
                    level: 2
                }
            }

            Rectangle {
                id: rectangle10
                y: -402
                width: 160
                height: 107
                color: "#000000"
                radius: 10
                border.color: "#565656"
                anchors.right: parent.right
                anchors.horizontalCenter: parent.horizontalCenter
                TextCust {
                    id: textCust3
                    color: Styles.blueDark
                    text: "STANDBY\nHYDRAULIC\nSYSTEM"
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 2
                }
                anchors.rightMargin: 358
            }
        }

        ModuleDescription {
            id: moduleDescription3
            x: 0
            y: 28
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            description: "HYDRAULIC CONTROL"
            anchors.topMargin: 0
            anchors.rightMargin: 0
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:4}D{i:3}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:2}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:18}D{i:17}D{i:20}D{i:19}D{i:21}D{i:22}D{i:23}
D{i:24}D{i:25}D{i:26}D{i:27}D{i:29}D{i:30}D{i:28}D{i:31}D{i:1}D{i:32}D{i:35}D{i:36}
D{i:37}D{i:38}D{i:39}D{i:40}D{i:42}D{i:41}D{i:43}D{i:44}D{i:45}D{i:46}D{i:47}D{i:48}
D{i:50}D{i:49}D{i:52}D{i:51}D{i:54}D{i:53}D{i:34}D{i:55}D{i:33}
}
##^##*/
