/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:08:06
  * @ Description: bleed air module
 */

import QtQuick
import QtQuick.Controls
import "../componets"

Item {
    id:bleedAirMod
    width: 1750
    height: 1060

    Rectangle {
        id: rectangle
        color: "#000000"
        border.color: "#000000"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Rectangle {
            id: rectangle1
            width: 460
            height: 321
            color: "#00ffffff"
            radius: 20
            border.color: "#00ffffff"
            border.width: 3
            anchors.top: parent.top
            anchors.horizontalCenterOffset: -591
            anchors.topMargin: 31
            anchors.horizontalCenter: parent.horizontalCenter
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

    Connections{
        target:ControlBleed

    }
    Item {
        id: leftSide
        width: parent.width/2
        height: parent.height

        CircularDialPsi{
            id: lBleedPress
            x: 150
            y: 63
            width: 230
            height: 230
            units: "PSI"
            desText: "L Duck Press"

        }

        CircularDialPsi{
            id: rBleedPress
            x: 507
            y: 63
            width: 230
            height: 230
            units: "PSI"
            desText: "R Duck Press"

        }

        Item {
            id: item1
            anchors.fill: parent

            Image {
                id: base
                anchors.fill: parent
                source: "../pic/bleedAir/base.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: airCond
                anchors.fill: parent
                source: "../pic/bleedAir/airCond.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: apu
                anchors.fill: parent
                source: "../pic/bleedAir/apu.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: apuSource
                anchors.fill: parent
                source: "../pic/bleedAir/apuSource.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: asu
                anchors.fill: parent
                source: "../pic/bleedAir/asu.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: eng1
                anchors.fill: parent
                source: "../pic/bleedAir/eng1.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: eng2
                anchors.fill: parent
                source: "../pic/bleedAir/eng2.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: eng1Source
                anchors.fill: parent
                source: "../pic/bleedAir/eng1Source.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: eng2Source
                anchors.fill: parent
                source: "../pic/bleedAir/eng2Source.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: lCircuit
                anchors.fill: parent
                source: "../pic/bleedAir/lCircuit.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: rCircuit
                anchors.fill: parent
                source: "../pic/bleedAir/rCircuit.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: rPackImg
                anchors.fill: parent
                source: "../pic/bleedAir/rPack.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: lPackImg
                anchors.fill: parent
                source: "../pic/bleedAir/lPack.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: airconditionExternal
                anchors.fill: parent
                source: "../pic/bleedAir/airconditionExternal.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: lCircuitAftVal
                anchors.fill: parent
                source: "../pic/bleedAir/lCircuitAftVal.png"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: rCircuitAftVal
                anchors.fill: parent
                source: "../pic/bleedAir/rCircuitAftVal.png"
                fillMode: Image.PreserveAspectFit
            }


            Item{
                id: desc
                anchors.fill: parent

                TextCust {
                    id: textCust
                    x: 362
                    y: 329
                    width: 68
                    height: 61
                    text: "LEFT AIR\nCOND\nPACK"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                    color:Styles.blueDark
                }

                TextCust {
                    id: textCust1
                    x: 445
                    y: 329
                    width: 68
                    height: 61
                    color: Styles.blueDark
                    text: "RIGHT AIR\nCOND\nPACK"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                }

                TextCust {
                    id: textCust2
                    x: 404
                    y: 183
                    width: 68
                    height: 61
                    color: Styles.blueDark
                    text: "MIX\nmanifold"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                }

                TextCust {
                    id: textCust3
                    x: 503
                    y: 582
                    width: 68
                    height: 61
                    color: Styles.blueDark
                    text: "EXTERNAL AIR\nconnection"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                }

                TextCust {
                    id: textCust4
                    x: 288
                    y: 359
                    width: 68
                    height: 60
                    color: Styles.blueDark
                    text: "ENG 1"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                }

                TextCust {
                    id: textCust5
                    x: 525
                    y: 359
                    width: 68
                    height: 60
                    color: Styles.blueDark
                    text: "ENG 2"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                }

                TextCust {
                    id: textCust6
                    x: 404
                    y: 946
                    width: 68
                    height: 60
                    color: Styles.blueDark
                    text: "APU"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                }

                TextCust {
                    id: textCust7
                    x: 208
                    y: 507
                    width: 68
                    height: 60
                    color: Styles.blueDark
                    text: "wing\nanti-ice"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                }

                TextCust {
                    id: textCust8
                    x: 606
                    y: 500
                    width: 68
                    height: 60
                    color: Styles.blueDark
                    text: "wing\nanti-ice"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                }

                MiniValve {
                    id: eng1Val
                    x: 306
                    y: 425
                    open: 0
                    directView: true
                    rotation: 90
                }

                MiniValve {
                    id: eng2Val
                    x: 539
                    y: 425
                    directView: true
                    rotation: 90
                }

                MiniValve {
                    id: apuVal
                    x: 399
                    y: 550
                    directView: true
                    rotation: 90
                }

                TextCust {
                    id: textCust9
                    x: 404
                    y: 87
                    width: 68
                    height: 60
                    color: Styles.blueDark
                    text: "AIR\nCONDISION"
                    font.letterSpacing: -1.5
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.wordSpacing: -0.3
                    level: 3
                }

                MiniValve {
                    id: isoValve
                    x: 423
                    y: 484
                    directView: true
                }

                TextCust {
                    id: textCust10
                    x: 404
                    y: 273
                    width: 68
                    height: 60
                    color: Styles.blueDark
                    text: "GROUND\nprecond\nair"
                    font.letterSpacing: -1.5
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 3
                    font.wordSpacing: -0.3
                }

                MiniValve {
                    id: rightPackVal
                    x: 464
                    y: 440
                    directView: true
                    rotation: 90
                }

                MiniValve {
                    id: leftPackVal
                    x: 380
                    y: 440
                    directView: true
                    open: 1
                    rotation: 90
                }
            }
        }

        ModuleDescription {
            id: moduleDescription
            y: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            description: "BLEED AIR OVERVIEW"
        }

        Swich2stateBasic {
            id: lRecricrFan
            y: 858
            anchors.left: parent.left
            anchors.leftMargin: 10
            swich2state.onText: "AUTO"
            swich2state.description: "L RECIRC\nFAN"
            onClicked:{
                ControlBleed.togleRecircFan("l")
            }
        }

        Swich2stateBasic {
            id: rRecrircFan
            x: 0
            y: 858
            width: 150
            height: 150
            anchors.right: parent.right
            anchors.rightMargin: 10
            swich2state.togled: false
            swich2state.onText: "AUTO"
            swich2state.description: "R RECIRC\nFAN"
            onClicked:{
                ControlBleed.togleRecircFan("r")
            }
        }

        Column {
            id: column
            x: 723
            y: 63
            width: 144
            height: 244


            WarningIndicator {
                id: lWarPack
                height: 80
                warText: "PACK"
            }

            WarningIndicator {
                id: lWinBodyBleed
                height: 80
                textHeight: 23
                warText: "WING BODY\nOVERHEAT"
            }

            WarningIndicator {
                id: lBleed
                height: 80
                warText: "BLEED"
            }

        }

        Column {
            id: column1
            x: 8
            y: 76
            width: 144
            height: 219
            anchors.right: parent.right
            anchors.rightMargin: 723

            WarningIndicator {
                id: rWarPack
                height: 80
                warText: "PACK"
            }

            WarningIndicator {
                id: rWinBodyBleed
                height: 80
                textHeight: 23
                warText: "WING BODY\nOVERHEAT"
            }

            WarningIndicator {
                id: rBleed
                height: 80
                warText: "BLEED"
            }

        }
    }

    Item {
        id: rightSide
        width: parent.width/2
        x:parent.width/2
        height: parent.height

        ModuleDescription {
            id: moduleDescription1
            y: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.rightMargin: 0
            description: "BLEED AIR CONTROL"
            anchors.leftMargin: 0
        }

        Rectangle {
            id: rectangle5
            x: -324
            y: 455
            width: 647
            height: 20
            color: "#0f0f0f"
            border.color: "#808080"
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Rectangle {
            id: rectangle6
            x: 112
            y: 725
            width: 186
            height: 20
            color: "#0f0f0f"
            border.color: "#808080"
        }

        Rectangle {
            id: rectangle7
            x: 112
            y: 234
            width: 20
            height: 635
            color: "#0f0f0f"
            border.color: "#808080"
        }

        Rectangle {
            id: rectangle8
            x: 278
            y: 725
            width: 20
            height: 144
            color: "#0f0f0f"
            border.color: "#808080"
        }

        Rectangle {
            id: rectangle9
            x: 575
            y: 725
            width: 186
            height: 20
            color: "#0f0f0f"
            border.color: "#808080"
        }

        Rectangle {
            id: rectangle10
            x: 575
            y: 725
            width: 20
            height: 138
            color: "#0f0f0f"
            border.color: "#808080"
        }

        Rectangle {
            id: rectangle11
            x: 741
            y: 247
            width: 20
            height: 616
            color: "#0f0f0f"
            border.color: "GRAY"
        }

        Swich2stateBasic {
            id: rBleedSw
            x: 675
            y: 829
            anchors.right: parent.right
            anchors.rightMargin: 50
            swich2state.togled: false
            swich2state.description: "ENG 2\nBLEED"
            onClicked:{
                ControlBleed.togleBleedSource("r")
            }
        }

        WarningIndicator {
            id: dualBleed
            x: 142
            y: 976
            height: 80
            warText: "DUAL\nBLEED"
        }

        Swich2stateBasic {
            id: lBleedSw
            y: 827
            anchors.left: parent.left
            anchors.leftMargin: 50
            swich2state.description: "ENG 2\nBLEED"
            onClicked:{
                ControlBleed.togleBleedSource("l")
            }
        }

        Swich2stateBasic {
            id: apuBleedSw
            y: 827
            anchors.left: parent.left
            anchors.leftMargin: 215
            swich2state.togled: false
            swich2state.description: "APU\nBLEED"
            onClicked:{
                ControlBleed.togleBleedSource("apu")
            }
        }

        Swich3posDes {
            id: isoVal
            x: 298
            y: 366
            height: 150
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            descriptionTextW: 30
            textPos3: "OPEN"
            textPos1: "CLOSE"
            textWidth: 27
            description: "ISOLATION VALVE"

            butt1.onClicked:{
                ControlBleed.togleIsoValve(0)
            }
            butt2.onClicked:{
                ControlBleed.togleIsoValve(1)
            }
            butt3.onClicked:{
                ControlBleed.togleIsoValve(2)
            }

        }

        Swich3posDes {
            id: lPack
            y: 104
            width: 300
            height: 150
            position: 0
            anchors.left: parent.left
            anchors.leftMargin: 74
            textWidth: 27
            descriptionTextW: 34
            description: "LEFT PACK"
            textPos3: "HIGH"
            butt1.onClicked:{
                ControlBleed.toglePack("l",0)
            }
            butt2.onClicked:{
                ControlBleed.toglePack("l",1)
            }
            butt3.onClicked:{
                ControlBleed.toglePack("l",2)
            }
        }

        Swich3posDes {
            id: rPack
            x: 116
            y: 104
            width: 300
            height: 150
            position: 0
            anchors.right: parent.right
            anchors.rightMargin: 75
            textWidth: 27
            textPos3: "HIGH"
            description: "RIGHT PACK"
            butt1.onClicked:{
                ControlBleed.toglePack("r",0)
            }
            butt2.onClicked:{
                ControlBleed.toglePack("r",1)
            }
            butt3.onClicked:{
                ControlBleed.toglePack("r",2)
            }
        }

        CircleButton{
            x: 330
            y: 574
            text: "";
            anchors.horizontalCenterOffset: -99
            buttText: "TRIP\nRESET";
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                ControlBleed.bleedTripReset()
            }
        }

        CircleButton {
            x: 454
            y: 574
            buttText: "OVHT\nTEST"
            anchors.horizontalCenterOffset: 93
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                ControlBleed.tripButtTest()
            }

        }

        Rectangle {
            id: rectangle3
            x: 525
            y: 826
            width: 150
            height: 150
            color: "#000000"
            radius: 10
            border.color: "#6a6a6a"
            border.width: 1
            anchors.right: parent.right
            anchors.rightMargin: 215
            Text {
                id: text3
                color: "#6a6a6a"
                text: "EXTERNAL\nSOURCE"
                anchors.fill: parent
                font.pixelSize: 27
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 0
            }
        }

        Rectangle {
            id: rectangle12
            x: 113
            y: 726
            width: 184
            height: 18
            color: "#0f0f0f"
            border.color: "#00808080"
        }

        Rectangle {
            id: rectangle13
            x: 576
            y: 726
            width: 184
            height: 18
            color: "#0f0f0f"
            border.color: "#00808080"
        }

        Rectangle {
            id: rectangle14
            x: 594
            y: 456
            width: 166
            height: 18
            color: "#0f0f0f"
            border.color: "#00808080"
        }

        Rectangle {
            id: rectangle15
            x: 116
            y: 456
            width: 166
            height: 18
            color: "#0f0f0f"
            border.color: "#00808080"
        }










    }

    Connections{
        target:RenderBleed

        function onSetSwich(name,pos){
            switch(name){
            case"lPack":{
                lPack.position=pos
                break;
            }
            case"rPack":{
                rPack.position=pos
                break;
            }
            case"lFan":{
                lRecricrFan.swich2state.togled=pos
                break;
            }
            case"rFan":{
                rRecrircFan.swich2state.togled=pos
                break;
            }
            case"isoVal":{
                isoVal.position=pos
                break;
            }
            case"blAirL":{
                lBleedSw.swich2state.togled=pos
                break;
            }
            case"blAirR":{
                rBleedSw.swich2state.togled=pos
                break;
            }
            case"blAirApu":{
                apuBleedSw.swich2state.togled=pos
                break;
            }
            default:{}
            }
        }
        function onSetAnnunciator(name,state){
            switch(name){
            case"lPack":{
                lWarPack.status=state
                break;
            }
            case"rPack":{
                rWarPack.status=state
                break;
            }
            case"lBleed":{
                lBleed.status=state
                break;
            }
            case"rBleed":{
                rBleed.status=state
                break;
            }
            case"lWBO":{
                lWinBodyBleed.status=state
                break;
            }
            case"rWBO":{
                rWinBodyBleed.status=state
                break;
            }
            case"dBleed":{
                dualBleed.status=state
                break;
            }
            default:{}
            }
        }
        function onSetPressIndicator(name,value){
            if(name==="l")
                lBleedPress.value=value
            else if(name==="r")
                rBleedPress.value=value
        }
        function onSetImg(name,val){
            switch(name){
            case"apuSource":{
                apuSource.visible=val
                break;
            }
            case"apu":{
                apu.visible=val
                break;
            }
            case"eng1Source":{
                eng1Source.visible=val
                break;
            }
            case"eng2Source":{
                eng2Source.visible=val
                break;
            }
            case"eng1":{
                eng1.visible=val
                break;
            }
            case"eng2":{
                eng2.visible=val
                break;
            }
            case"leftCircuit":{
                lCircuit.visible=val
                break;
            }
            case"rightCircuit":{
                rCircuit.visible=val
                break;
            }
            case"leftCircuit":{
                lCircuit.visible=val
                break;
            }
            case"rightCircuit":{
                rCircuit.visible=val
                break;
            }

            case"leftPack":{
                lPackImg.visible=val
                lCircuitAftVal.visible=val
                break;
            }
            case"rightPack":{
                rPackImg.visible=val
                rCircuitAftVal.visible=val
                break;
            }
            case"airCond":{
                airCond.visible=val
                break;
            }
            case"groundCondAir":{
                airconditionExternal.visible=val
                break;
            }
            case"asu":{
                asu.visible=val
                break;
            }
            default:{}
            }
        }
        function onSetVal(name,val){
            switch(name){
            case"apuVal":{
                apuVal.open=val
                break;
            }
            case"eng1Val":{
                eng1Val.open=val
                break;
            }
            case"eng2Val":{
                eng2Val.open=val
                break;
            }
            case"rPackVal":{
                rightPackVal.open=val
                break;
            }
            case"lPackVal":{
                leftPackVal.open=val
                break;
            }
            case"isolationVal":{
                isoValve.open=val
                break;
            }
            default:{}
            }
        }
    }







}







/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:2}D{i:1}D{i:3}D{i:4}D{i:6}D{i:7}D{i:9}D{i:10}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}D{i:23}
D{i:24}D{i:26}D{i:27}D{i:28}D{i:29}D{i:30}D{i:31}D{i:32}D{i:33}D{i:34}D{i:35}D{i:36}
D{i:37}D{i:38}D{i:39}D{i:40}D{i:41}D{i:42}D{i:25}D{i:8}D{i:43}D{i:44}D{i:45}D{i:47}
D{i:48}D{i:49}D{i:46}D{i:51}D{i:52}D{i:53}D{i:50}D{i:5}D{i:55}D{i:56}D{i:57}D{i:58}
D{i:59}D{i:60}D{i:61}D{i:62}D{i:63}D{i:64}D{i:65}D{i:66}D{i:67}D{i:68}D{i:69}D{i:70}
D{i:71}D{i:73}D{i:72}D{i:74}D{i:75}D{i:76}D{i:77}D{i:54}D{i:78}
}
##^##*/
