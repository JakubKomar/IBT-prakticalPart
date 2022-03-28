/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:07:59
  * @ Description: dashboard - main page
 */

import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id: dashBoard
    width: 1750
    height: 1060
    color: "#000000"
    border.color: "#00ffffff"

    Rectangle {
        id: rightSide
        x: parent.width/2
        width: parent.width/2
        color: "#00ffffff"
        border.color: "#00ffffff"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        
        EngineData {
            id: engineData
            border.color: "#00ffffff"
            anchors.fill: parent
        }
    }
    
    Rectangle {
        id: leftSide
        x: 0
        width: parent.width/2
        color: "#00ffffff"
        border.color: "#00ffffff"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        
        FlapsIndicator {
            id: flapsIndicator
            x: 628
            y: 741
            stateVal: 0
            setVal: 0.1
        }
        
        FuelPanelCompact {
            id: fuelPanelCompact
            x: 26
            y: 721
            width: 549
            height: 334
        }
        
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

            Rectangle {
                id: parkingBrake
                x: 377
                y: 314
                width: 125
                height: 25
                color: "#9c000000"
                radius: 7
                border.color: "#ff0000"

                TextCust {
                    id: textCust
                    x: 3
                    color: "#ff0000"
                    text: "Parking brake"
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    level: 3
                }
            }

            Rectangle {
                id: spdBreakExtended
                x: 288
                y: 198
                width: 64
                height: 47
                color: "#9c000000"
                radius: 7
                border.color: "#ff0000"
                TextCust {
                    id: textCust1
                    x: 3
                    color: "#ff0000"
                    text: "spd\nbrake\nextend"
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    anchors.topMargin: 0
                    level: 3
                }
            }

            Rectangle {
                id: spdBreakArmed
                x: 527
                y: 198
                width: 64
                height: 47
                color: "#9c000000"

                radius: 7
                border.color: Styles.green
                TextCust {
                    id: textCust2
                    x: 3
                    color: Styles.green
                    text: "spd\nbrake\narmed"
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    level: 3
                }
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
            id: moduleDescription1
            x: 601
            y: 676
            width: 274
            height: 39
            description: "FLAPS STATUS"
        }
        
        ModuleDescription {
            id: moduleDescription
            x: 0
            y: 676
            width: 601
            height: 39
            description: "FUEL STATUS"
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
            y: 34
            anchors.horizontalCenterOffset: 0
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
            case"spdBrealArmed":{
                spdBreakArmed.visible=val===1
                break
            }
            case"spdBrealExtended":{
                spdBreakExtended.visible=val===1
                break
            }
            case"parkingBreak":{
                parkingBrake.visible=val===1
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


    HalfTransparentBorder {
        id: halfTransparentBorder
        x: 437
        y: 0
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
    D{i:0;formeditorZoom:3}D{i:2}D{i:1}D{i:4}D{i:5}D{i:8}D{i:7}D{i:10}D{i:9}D{i:12}D{i:11}
D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:20}D{i:19}D{i:22}D{i:21}D{i:24}D{i:23}
D{i:6}D{i:25}D{i:26}D{i:27}D{i:28}D{i:29}D{i:30}D{i:31}D{i:3}D{i:32}D{i:33}
}
##^##*/
