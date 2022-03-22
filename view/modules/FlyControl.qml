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
            anchors.topMargin: 665
            anchors.leftMargin: 0
            description: "BREAKS"
            anchors.rightMargin: 0
        }

        EngineStarter {
            id: engineStarter
            x: 162
            y: 878
            width: 232
            height: 80
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

        WarningIndicator {
            id: warningIndicator2
            x: 162
            y: 977
            width: 116
            height: 75
            status: 0
            warText: "ANTI\nSKID\ninop"
        }

        WarningIndicator {
            id: warningIndicator3
            x: 278
            y: 977
            width: 116
            height: 75
            status: 0
            warText: "AUTO BRAKE\nDISARM"
        }

        TextCust {
            id: text3
            x: 175
            y: 839
            width: 113
            height: 24
            color: Styles.blueDark
            text: qsTr("AUTO BREAK")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: -158
            level: 2
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextCust {
            id: text4
            x: 626
            y: 839
            width: 113
            height: 24
            color: Styles.blueDark
            text: qsTr("BREAK PRESURE")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: 159
            level: 2
            anchors.horizontalCenter: parent.horizontalCenter
        }

        BreakTemp {
            id: breakTempL
            x: 117
            y: 736
            anchors.left: parent.left
            orangeVal: 5
            redVal: 9.5
            anchors.leftMargin: 178
            leftBreakTemp: 6.1
        }

        BreakTemp {
            id: breakTempR
            x: 496
            y: 732
            width: 201
            height: 88
            anchors.right: parent.right
            orangeVal: 5
            redVal: 9.5
            anchors.rightMargin: 178
            leftBreakTemp: 6.1
        }

        TextCust {
            id: text2
            x: 610
            y: 702
            width: 113
            height: 24
            color: Styles.blueDark
            text: qsTr("R TEMP")
            level:2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: 159
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextCust {
            id: text5
            x: 613
            y: 702
            width: 113
            height: 24
            color: Styles.blueDark
            text: qsTr("l TEMP")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: -158
            level: 2
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CircularDialV2 {
            id: circularDialV2
            x: 507
            y: 872
            width: 180
            height: 180
            value: 2.7
            redVal: 3.6
            maxValue: 4
        }
    }
    HalfTransparentBorder {
        id: halfTransparentBorder
        width: 1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
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
            anchors.topMargin: 28
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

            Rectangle {
                id: rectangle9
                x: 534
                y: 238
                width: 170
                height: 24
                color: "#0f0f0f"
            }
        }

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

        Swich2stateWarning {
            id: swich2stateWarning1
            x: 255
            y: 390
            description: "ELEC 2"
        }

        Swich2stateWarning {
            id: swich2stateWarning2
            x: 470
            y: 390
            description: "ELECT 1"
        }

        Swich2stateWarning {
            id: swich2stateWarning3
            x: 637
            y: 390
            description: "ENG 2"
        }

        WarningIndicator {
            id: warningIndicator1
            x: 470
            y: 585
            width: 150
            height: 56
            status: 0
            warText: "OVERHEAT"
        }

        Swich2stateWarning {
            id: swich2stateWarning
            x: 91
            y: 390
            description: "ENG 1"
        }

        WarningIndicator {
            id: warningIndicator
            x: 255
            y: 585
            width: 150
            height: 56
            status: 0
            warText: "OVERHEAT"
        }


        Rectangle {
            id: rectangle1
            x: 463
            y: 36
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
            y: 36
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

        ModuleDescription {
            id: moduleDescription5
            x: 4
            y: 7
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 664
            anchors.rightMargin: 470
            anchors.leftMargin: 0
            description: "Flaps"
        }

        FlapsIndicator {
            id: flapsIndicator
            x: 85
            y: 714
        }

        ModuleDescription {
            id: moduleDescription6
            x: 13
            y: 12
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "Flaps"
            anchors.topMargin: 664
            anchors.rightMargin: 0
            anchors.leftMargin: 470
        }




    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:4}D{i:3}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:2}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}D{i:23}
D{i:24}D{i:25}D{i:26}D{i:27}D{i:1}D{i:28}D{i:31}D{i:32}D{i:33}D{i:34}D{i:35}D{i:37}
D{i:36}D{i:38}D{i:30}D{i:39}D{i:40}D{i:41}D{i:42}D{i:43}D{i:44}D{i:45}D{i:47}D{i:46}
D{i:49}D{i:48}D{i:50}D{i:51}D{i:52}D{i:29}
}
##^##*/
