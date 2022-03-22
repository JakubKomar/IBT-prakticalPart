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

            BreakTemp {
                id: breakTempL
                y: 724
                anchors.left: parent.left
                orangeVal: 5
                redVal: 9.5
                anchors.leftMargin: 131
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
                x: 573
                y: 724
                anchors.right: parent.right
                orangeVal: 5
                redVal: 9.5
                anchors.rightMargin: 101
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
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 686
            anchors.leftMargin: 0
            description: "BREAKS"
            anchors.rightMargin: 0
        }

        EngineStarter {
            id: engineStarter
            x: 333
            y: 896
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
    }
    HalfTransparentBorder {
        id: halfTransparentBorder
        width: 1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
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

        ModuleDescription {
            id: moduleDescription3
            x: 6
            y: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 0
            description: "HYDRAULIC CONTROL"
            anchors.topMargin: 0
            anchors.rightMargin: 0
        }

        FlapsIndicator {
            id: flapsIndicator
            y: 751
            anchors.horizontalCenter: parent.horizontalCenter
            stateVal: 0
            setVal: 0.1
        }

        ModuleDescription {
            id: moduleDescription1
            x: 48
            y: 686
            height: 39
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            description: "FLAPS "
        }

        Swich2stateWarning {
            id: swich2stateWarning1
            x: 209
            y: 390
        }

        Swich2stateWarning {
            id: swich2stateWarning2
            x: 463
            y: 390
        }

        Swich2stateWarning {
            id: swich2stateWarning3
            x: 637
            y: 390
        }

        WarningIndicator {
            id: warningIndicator1
            x: 463
            y: 585
            width: 150
            height: 56
        }

        Swich2stateWarning {
            id: swich2stateWarning
            x: 45
            y: 390
        }

        WarningIndicator {
            id: warningIndicator
            x: 209
            y: 585
            width: 150
            height: 56
        }


    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:4}D{i:3}D{i:6}D{i:5}D{i:8}D{i:7}D{i:9}D{i:10}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:2}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}
D{i:1}D{i:23}D{i:25}D{i:26}D{i:27}D{i:28}D{i:29}D{i:30}D{i:31}D{i:32}D{i:33}D{i:24}
}
##^##*/
