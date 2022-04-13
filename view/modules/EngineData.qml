/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:56:08
  * @ Description: engine data panel
 */

import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:engineData
    width: 875

    height: 1060
    color: "#000000"
    border.color: "#ffffff"

    ModuleDescription {
        id: moduleDescription
        y: 0
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 1
        anchors.rightMargin: 0
        description: "ENGINE STATUS"
    }

    Column {
        id: column
        x: 8
        y: 98
        width: 140
        height: 396
        spacing: -1

        WarningIndicator {
            id: warningStartValve1
            height: 80
            indicator.textHeight: 11
            textHeight: 21
            warText: "START VALVE\nOPEN"
            status: 0
        }

        WarningIndicator {
            id: warningOilFilter1
            height: 80
            textHeight: 21
            warText: "OIL FILTER\nBYPASS"
            status: 0
        }

        WarningIndicator {
            id: warningLowOil1
            height: 80
            textHeight: 21
            warText: "LOW OIL\nPRESSURE"
            status: 0
        }

        WarningIndicator {
            id: warningThrust1
            height: 80
            textHeight: 21
            warText: "THRUST"
            status: 0
        }

        WarningIndicator {
            id: warningFuelFlow1
            height: 80
            textHeight: 21
            warText: "FUEL FLOW"
            status: 0
        }
    }

    Column {
        id: column2
        y: 52
        width: 235
        height: 1011
        anchors.horizontalCenterOffset: -150
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 18

        TextCust {
            id: text1
            color: Styles.blueDark
            text: qsTr("ENGINE 1")
            level:2
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CircularDialN {
            id: n1L
            width: 250
            anchors.horizontalCenter: parent.horizontalCenter
            fire: true
            n2: 104.7
        }

        CircularDialEgt {
            id: egtL
            width: 220
            height: 220
            value: 893.8
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Column {
            id: column5
            width: 250
            height: 400
            anchors.right: parent.right
            anchors.rightMargin: 28
            spacing: 40

            DigitalVal {
                id: ffL
                width: 90
                height: 45
                texHeight: 30
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: oilPressL
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                value: 32.6
                maxWarnVal: 99
                minValue: 13
                minKritikValEneb: true
                minKritikVal: 13
                minWarnValEneb: true
                minWarnVal: 20
                maxValue: 100
                inverted: true
            }

            HorizontalIndicator {
                id: oilTempL
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                maxWarnValEneb: true
                maxKritikValEneb: true
                maxKritikVal: 165
                maxWarnVal: 154
                maxValue: 170
                inverted: true
            }

            HorizontalIndicator {
                id: oilQtyL
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                minWarnValEneb: true
                minKritikVal: 5
                minKritikValEneb: false
                minWarnVal: 5
                value: 20
                maxValue: 40
                inverted: true
            }

            HorizontalIndicator {
                id: vibL
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                maxWarnValEneb: true
                maxWarnVal: 4
                value: 1.6
                fixedDecimals: 1
                maxValue: 5
                inverted: true
            }
        }
    }

    Column {
        id: column3
        y: 52
        width: 235
        height: 1011
        anchors.horizontalCenterOffset: 150
        anchors.horizontalCenter: parent.horizontalCenter
        TextCust {
            id: text2
            color:  Styles.blueDark
            text: qsTr("ENGINE 2")
            level:2
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CircularDialN {
            id: n1R
            width: 250
            anchors.horizontalCenter: parent.horizontalCenter
            engFail: true
            fire: false
            motoring: true
            reverser: true
            reverserGreen: true
            n2: 93.8
            n1: 99
            maxVal: 104
        }

        CircularDialEgt {
            id: egtR
            width: 220
            height: 220
            value: 103.6
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Column {
            id: column4
            width: 250
            height: 400
            anchors.left: parent.left
            anchors.leftMargin: 28
            spacing: 40

            DigitalVal {
                id: ffR
                width: 90
                height: 45
                texHeight: 30
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: oilPressR
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                value: 38.9
                inverted: false
                maxWarnVal: 99
                minValue: 13
                minKritikValEneb: true
                minKritikVal: 13
                minWarnValEneb: true
                minWarnVal: 20
                maxValue: 100
            }

            HorizontalIndicator {
                id: oilTempR
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                maxWarnValEneb: true
                maxKritikValEneb: true
                maxKritikVal: 165
                maxWarnVal: 154
                maxValue: 170
            }

            HorizontalIndicator {
                id: oilQtyR
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                minWarnValEneb: true
                minKritikVal: 5
                minKritikValEneb: false
                minWarnVal: 5
                value: 20
                maxValue: 40
                inverted: false
            }

            HorizontalIndicator {
                id: vibR
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                maxWarnValEneb: true
                maxWarnVal: 4
                value: 1.6
                fixedDecimals: 1
                maxValue: 5
            }

        }
        spacing: 18
    }

    TextCust {
        id: text4
        y: 467
        width: 77
        height: 52
        color: Styles.blueDark
        text: qsTr("EGT")
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        TextCust {
            id: text14
            x: 31
            y: 37
            color: "#ffffff"
            text: qsTr("C°")
            anchors.horizontalCenterOffset: -1
            level: 3
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }


    TextCust {
        id: text5
        y: 599
        width: 77
        height: 52
        color: Styles.blueDark
        text: qsTr("FF")
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter

        TextCust {
            id: text3
            y: 37
            color: "#ffffff"
            text: qsTr("KG/s")
            anchors.horizontalCenter: parent.horizontalCenter
            level:3
            anchors.horizontalCenterOffset: -1
        }
    }


    TextCust {
        id: text7
        y: 678
        width: 77
        height: 52
        color: Styles.blueDark
        text: qsTr("OIL\nPRESS")
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter

        TextCust {
            id: text6
            x: 32
            y: 48
            width: 22
            height: 13
            color: "#ffffff"
            text: qsTr("PSI")
            anchors.horizontalCenter: parent.horizontalCenter
            level:3
            anchors.horizontalCenterOffset: -1
        }
    }


    TextCust {
        id: text10
        y: 928
        width: 77
        height: 52
        color: Styles.blueDark
        text: qsTr("VIB")
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter

        TextCust {
            id: text8
            x: 34
            y: 42
            width: 7
            height: 16
            color: "#ffffff"
            text: qsTr("J")
            anchors.horizontalCenter: parent.horizontalCenter
            level:3
            anchors.horizontalCenterOffset: 0
        }
    }


    Column {
        id: column1
        x: 727
        y: 98
        width: 140
        height: 402
        spacing: -1
        WarningIndicator {
            id: warningStartValve2
            height: 80
            textHeight: 21
            status: 0
            warText: "START VALVE\nOPEN"
        }

        WarningIndicator {
            id: warningOilFilter2
            height: 80
            textHeight: 21
            status: 0
            warText: "OIL FILTER\nBYPASS"
        }

        WarningIndicator {
            id: warningLowOil2
            height: 80
            textHeight: 21
            status: 0
            warText: "LOW OIL\nPRESSURE"
        }

        WarningIndicator {
            id: warningThrust2
            height: 80
            textHeight: 21
            status: 0
            warText: "THRUST"
        }
    }

    Connections{
        target:EngineDataRender

        function onSetIndicator(name, val){
            switch(name){
            case"n1L": {
                n1L.n1=val
                break;
            }
            case"n1R": {
                n1R.n1=val
                break;
            }
            case"n1regL": {
                n1L.setVal=val

                break;
            }
            case"n1regR": {
                n1R.setVal=val
                break;
            }
            case"egtL": {
                egtL.value=val
                break;
            }
            case"egtR": {
                egtR.value=val
                break;
            }
            case"n2L": {
                n1L.n2=val
                break;
            }
            case"n2R": {
                n1R.n2=val
                break;
            }
            case"oilTempL": {
                oilTempL.value=val
                break;
            }
            case"oilTempR": {
                oilTempR.value=val
                break;
            }
            case"oilPresL": {
                oilPressL.value=val
                break;
            }
            case"oilPresR": {
                oilPressR.value=val
                break;
            }
            case"ffL": {
                ffL.value=val
                break;
            }
            case"ffR": {
                ffR.value=val
                break;
            }
            case"oilQtyL": {
                oilQtyL.value=val
                break;
            }
            case"oilQtyR": {
                oilQtyR.value=val
                break;
            }
            case"vibR": {
                vibR.value=val
                break;
            }
            case"vibL": {
                vibL.value=val
                break;
            }
            default:{}
            }
        }
        function onSetAnnunciator(name,val){
            switch(name){
            case"startValveL": {
                warningStartValve1.status=val
                break;
            }
            case"startValveR": {
                warningStartValve2.status=val
                break;
            }
            case"oilLowL": {
                warningLowOil1.status=val
                break;
            }
            case"oilLowR": {
                warningLowOil2.status=val
                break;
            }
            case"oilFilterByL": {
                warningOilFilter1.status=val
                break;
            }
            case"oilFilterByR": {
                warningOilFilter2.status=val
                break;
            }
            case"lowFuelPresureL": {
                warningFuelFlow1.status=val
                break;
            }
            case"lowFuelPresureR": {
                warningFuelFlow2.status=val
                break;
            }
            case"trustL": {
                warningThrust1.status=val
                break;
            }
            case"trustR": {
                warningThrust2.status=val
                break;
            }
            default:{}
            }
        }
        function onSetBoolAnnunciator(name,value){
            switch(name){
            case"motoringL":{
                n1L.motoring=value
                break;
            }
            case"motoringR":{
                n1R.motoring=value
                break;
            }
            case"fireL":{
                n1L.fire=value
                break;
            }
            case"fireR":{
                n1R.fire=value
                break;
            }
            case"reverserL":{
                n1L.reverser=value
                break;
            }
            case"reverserR":{
                n1R.reverser=value
                break;
            }
            case"reverserGreenL":{
                n1L.reverserGreen=value
                break;
            }
            case"reverserGreenR":{
                n1R.reverserGreen=value
                break;
            }
            case"engFailL":{
                n1L.engFail=value
                break;
            }
            case"engFailR":{
                n1R.engFail=value
                break;
            }
            case"targetOffL":{
                n1L.setValEneb=value
                break;
            }
            case"targetOffR":{
                n1R.setValEneb=value
                break;
            }
            default:{}
            }
        }
    }

    TextCust {
        id: text11
        y: 762
        width: 77
        height: 52
        color: Styles.blueDark
        text: qsTr("OIL\nTEMP")
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 0

        TextCust {
            id: text9
            x: 31
            y: 50
            color: "#ffffff"
            text: qsTr("C°")
            anchors.horizontalCenter: parent.horizontalCenter
            level:3
            anchors.horizontalCenterOffset: -1
        }
    }

    TextCust {
        id: text12
        level:2
        y: 846
        width: 77
        height: 52
        color:Styles.blueDark
        text: qsTr("OIL\nQTY")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 0

        TextCust {
            id: text13
            x: 35
            y: 49
            color: "#ffffff"
            text: qsTr("J")
            anchors.horizontalCenter: parent.horizontalCenter
            level:3
            anchors.horizontalCenterOffset: 0
        }
    }

    WarningIndicator {
        id: warningFuelFlow2
        x: 727
        y: 414
        height: 80
        textHeight: 21
        status: 0
        warText: "FUEL FLOW"
    }
}


/*##^##
Designer {
    D{i:0;height:1060;width:875}D{i:1}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:2}D{i:9}D{i:10}
D{i:11}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:12}D{i:8}D{i:19}D{i:20}D{i:21}D{i:23}
D{i:24}D{i:25}D{i:26}D{i:27}D{i:22}D{i:18}D{i:29}D{i:28}D{i:31}D{i:30}D{i:33}D{i:32}
D{i:35}D{i:34}D{i:37}D{i:38}D{i:39}D{i:40}D{i:36}D{i:41}D{i:43}D{i:42}D{i:45}D{i:44}
D{i:46}
}
##^##*/
