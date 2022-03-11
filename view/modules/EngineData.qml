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
        x: 143
        y: 52
        width: 235
        height: 1011
        spacing: 18

        CircularDialN {
            id: n1L
            maxVal: 104
            value: 98.8
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CircularDialEgt {
            id: egtL
            width: 220
            height: 220
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CircularDialN {
            id: n2L
            setValEneb: false
        }

        DigitalVal {
            id: ffL
            width: 90
            height: 42
            texHeight: 30
            anchors.horizontalCenter: parent.horizontalCenter
        }

        HorizontalIndicator {
            id: oilPressL
            inverted: true
            anchors.horizontalCenter: parent.horizontalCenter
        }





        HorizontalIndicator {
            id: oilTempL
            inverted: true
            anchors.horizontalCenter: parent.horizontalCenter
        }





        DigitalVal {
            id: oilQtyL
            width: 90
            height: 42
            texHeight: 30
            anchors.horizontalCenter: parent.horizontalCenter
        }

        HorizontalIndicator {
            id: vibL
            inverted: true
            anchors.horizontalCenter: parent.horizontalCenter
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
            maxVal: 104
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CircularDialEgt {
            id: egtR
            width: 220
            height: 220
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CircularDialN {
            id: n2R
            setValEneb: false
        }

        DigitalVal {
            id: ffR
            width: 90
            height: 42
            texHeight: 30
            anchors.horizontalCenter: parent.horizontalCenter
        }

        HorizontalIndicator {
            id: oilPressR
            anchors.horizontalCenter: parent.horizontalCenter
        }

        HorizontalIndicator {
            id: oilTempR
            anchors.horizontalCenter: parent.horizontalCenter
        }

        DigitalVal {
            id: oilQtyR
            width: 90
            height: 42
            texHeight: 30
            anchors.horizontalCenter: parent.horizontalCenter
        }

        HorizontalIndicator {
            id: vibR
            anchors.horizontalCenter: parent.horizontalCenter
        }

        spacing: 18
    }

    Text {
        id: text3
        y: 150
        width: 77
        color: "#00cdff"
        text: qsTr("N1")
        font.pixelSize: 34
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
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
        anchors.horizontalCenterOffset: -7
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text5
        y: 759
        width: 77
        color: "#00cdff"
        text: qsTr("FF")
        font.pixelSize: 34
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: -7
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text6
        y: 619
        width: 77
        color: "#00cdff"
        text: qsTr("N2")
        font.pixelSize: 34
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: -7
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text7
        y: 810
        width: 77
        color: "#00cdff"
        text: qsTr("OIL\nPRESS")
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: -7
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text8
        y: 874
        width: 77
        height: 61
        color: "#00cdff"
        text: qsTr("OIL\nTEMP")
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: -7
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text9
        y: 941
        width: 77
        color: "#00cdff"
        text: qsTr("OIL\nQTY")
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: -7
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text10
        y: 1005
        width: 77
        color: "#00cdff"
        text: qsTr("VIB")
        font.pixelSize: 25
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        anchors.horizontalCenterOffset: -7
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
                    n1L.value=val
                break;
                }
                case"n1R": {
                    n1R.value=val
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
                    n2L.value=val
                break;
                }
                case"n2R": {
                    n2R.value=val
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
    }
}

