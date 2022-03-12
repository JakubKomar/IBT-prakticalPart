import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:engineData
    width: 875

    height: 1060
    color: "#000000"
    border.color: "#ffffff"

    Column {
        id: column
        x: 8
        y: 65
        width: 140
        height: 329

        WarningIndicator {
            id: warningStartValve1
            textHeight: 21
            warText: "START VALVE\nOPEN"
            status: 0
        }

        WarningIndicator {
            id: warningOilFilter1
            textHeight: 21
            warText: "OIL FILTER\nBYPASS"
            status: 0
        }

        WarningIndicator {
            id: warningLowOil1
            textHeight: 21
            warText: "LOW OIL\nPRESSURE"
            status: 0
        }

        WarningIndicator {
            id: warningThrust1
            textHeight: 21
            warText: "THRUST"
            status: 0
        }

        WarningIndicator {
            id: warningFuelFlow1
            textHeight: 21
            warText: "FUEL FLOW"
            status: 0
        }

    }

    Text {
        id: text1
        x: 207
        y: 8
        color: "#ffffff"
        text: qsTr("ENGINE 1")
        font.pixelSize: 28
    }

    Text {
        id: text2
        x: 543
        y: 0
        color: "#ffffff"
        text: qsTr("ENGINE 2")
        font.pixelSize: 28
    }

    Column {
        id: column2
        x: 154
        y: 52
        width: 235
        height: 1011
        spacing: 18

        CircularDialN {
            id: n1L
            x: 20
            width: 250
            n2: 104.7
        }

        CircularDialEgt {
            id: egtL
            width: 220
            height: 220
            value: 24.8
            anchors.horizontalCenter: parent.horizontalCenter
        }









        Column {
            id: column5
            height: 400
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            spacing: 40

            DigitalVal {
                id: ffL
                width: 90
                height: 42
                texHeight: 30
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: oilPressL
                value: 32.6
                maxWarnVal: 99
                minValue: 13
                minKritikValEneb: true
                minKritikVal: 13
                minWarnValEneb: true
                minWarnVal: 20
                maxValue: 100
                inverted: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: oilTempL
                maxWarnValEneb: true
                maxKritikValEneb: true
                maxKritikVal: 165
                maxWarnVal: 154
                maxValue: 170
                inverted: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: vibL
                maxWarnValEneb: true
                maxWarnVal: 4
                value: 1.6
                fixedDecimals: 1
                maxValue: 5
                inverted: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: oilQtyL
                minWarnValEneb: true
                minKritikVal: 5
                minKritikValEneb: false
                minWarnVal: 5
                value: 20
                maxValue: 40
                inverted: true
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }








    }

    Column {
        id: column3
        x: 485
        y: 52
        width: 235
        height: 1011
        CircularDialN {
            id: n1R
            x: -20
            width: 250
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
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Column {
            id: column4
            height: 400
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            spacing: 40

            DigitalVal {
                id: ffR
                width: 90
                height: 42
                texHeight: 30
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: oilPressR
                value: 38.9
                inverted: false
                maxWarnVal: 99
                minValue: 13
                minKritikValEneb: true
                minKritikVal: 13
                minWarnValEneb: true
                minWarnVal: 20
                maxValue: 100
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: oilTempR
                maxWarnValEneb: true
                maxKritikValEneb: true
                maxKritikVal: 165
                maxWarnVal: 154
                maxValue: 170
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: vibR
                maxWarnValEneb: true
                maxWarnVal: 4
                value: 1.6
                fixedDecimals: 1
                maxValue: 5
                anchors.horizontalCenter: parent.horizontalCenter
            }

            HorizontalIndicator {
                id: oilQtyR
                minWarnValEneb: true
                minKritikVal: 5
                minKritikValEneb: false
                minWarnVal: 5
                value: 20
                maxValue: 40
                inverted: false
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }


        spacing: 18
    }

    Text {
        id: text4
        y: 388
        width: 77
        color: "#00cdff"
        text: qsTr("EGT")
        font.pixelSize: 34
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text5
        y: 557
        width: 77
        color: "#00cdff"
        text: qsTr("FF")
        font.pixelSize: 34
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: text3
            x: 27
            y: 42
            color: "#ffffff"
            text: qsTr("KG/s")
            font.pixelSize: 12
            anchors.horizontalCenterOffset: 0
        }

        Text {
            id: text6
            x: 31
            y: 123
            color: "#ffffff"
            text: qsTr("PSI")
            font.pixelSize: 12
            anchors.horizontalCenterOffset: 0
        }

        Text {
            id: text8
            x: 36
            y: 361
            width: 7
            height: 16
            color: "#ffffff"
            text: qsTr("J")
            font.pixelSize: 12
            anchors.horizontalCenterOffset: 0
        }

        Text {
            id: text9
            x: 33
            y: 199
            color: "#ffffff"
            text: qsTr("C°")
            font.pixelSize: 12
            anchors.horizontalCenterOffset: 0
        }

        Text {
            id: text13
            x: 33
            y: 288
            color: "#ffffff"
            text: qsTr("J")
            font.pixelSize: 12
            anchors.horizontalCenterOffset: 0
        }
    }

    Text {
        id: text7
        y: 624
        width: 77
        color: "#00cdff"
        text: qsTr("OIL\nPRESS")
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text10
        y: 888
        width: 77
        color: "#00cdff"
        text: qsTr("VIB")
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        id: column1
        x: 727
        y: 65
        width: 140
        height: 329
        WarningIndicator {
            id: warningStartValve2
            textHeight: 21
            status: 0
            warText: "START VALVE\nOPEN"
        }

        WarningIndicator {
            id: warningOilFilter2
            textHeight: 21
            status: 0
            warText: "OIL FILTER\nBYPASS"
        }

        WarningIndicator {
            id: warningLowOil2
            textHeight: 21
            status: 0
            warText: "LOW OIL\nPRESSURE"
        }

        WarningIndicator {
            id: warningThrust2
            textHeight: 21
            status: 0
            warText: "THRUST"
        }

        WarningIndicator {
            id: warningFuelFlow2
            textHeight: 21
            status: 0
            warText: "FUEL FLOW"
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

    Text {
        id: text11
        y: 699
        width: 77
        color: "#00cdff"
        text: qsTr("OIL\nTEMP")
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 0
    }

    Text {
        id: text12
        y: 786
        width: 77
        color: "#00cdff"
        text: qsTr("OIL\nQTY")
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 0
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:1}D{i:7}D{i:8}D{i:10}
D{i:11}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:12}D{i:9}D{i:19}D{i:20}D{i:22}D{i:23}
D{i:24}D{i:25}D{i:26}D{i:21}D{i:18}D{i:27}D{i:28}D{i:29}D{i:30}D{i:32}D{i:33}D{i:34}
D{i:35}D{i:36}D{i:31}D{i:37}D{i:38}D{i:39}
}
##^##*/
