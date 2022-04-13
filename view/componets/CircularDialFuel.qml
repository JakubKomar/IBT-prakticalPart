/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:17:31
  * @ Description: fuel qty indicator
 */

import QtQuick
import QtQuick.Shapes
import "../componets"

Item {
    id: circularDialFuel
    width: 210
    height: 210
    property alias circularDialV2: circularDialV2
    property double value: 10000

    property string desText:"Description"
    property string units:"Units"
    property bool inbalance:true
    property bool config:true
    property bool low:true
    property bool isCenterTank:true
    property bool warning:inbalance&&!isCenterTank||config&&isCenterTank||low&&!isCenterTank
    state:{
        if(warning){
            "warning"
        }
        else{
            ""
        }
    }
    CircularDialV2 {
        id: circularDialV2
        anchors.fill: parent
        scaleText: "K"
        numScale: 1000
        maxValue: 20000

        value: circularDialFuel.value
        minValue: 0
        bigStep:2000
    }

    Rectangle {
        id: digitalField
        y: 55
        width: 120
        height: 100
        color: "#00ffffff"
        radius: 20
        border.color: "#ffffff"
        border.width: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 26
        anchors.horizontalCenter: parent.horizontalCenter

        TextCust {
            id: description
            height: 30
            color: Styles.blueDark
            text: desText
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: -30
            anchors.horizontalCenter: parent.horizontalCenter
            level:3
        }

        TextCust {
            id: digitalValue
            width: 75
            height: 29
            color:warning?"orange": "#ffffff"
            text: value.toFixed(0)
            anchors.verticalCenter: parent.verticalCenter
            font.letterSpacing: 0
            level:2
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            lineHeight: 0
            anchors.horizontalCenterOffset: -15
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextCust {
            id: unitsText
            x: 90
            width: 22
            height: 29
            color: Styles.blueDark
            text: "LB"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            font.letterSpacing: -1.8
            level:2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: 0
            anchors.rightMargin: 8
        }

        TextCust {
            id: warnImbalance
            width: 75
            height: 16
            visible: inbalance&& !isCenterTank && !low
            color: "orange"
            text: qsTr("IMBALANCE")
            anchors.verticalCenter: parent.verticalCenter
            level:3
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenterOffset: 30
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextCust {
            id: warnConfig
            width: 69
            height: 17
            visible: config && isCenterTank
            color: "orange"
            text: qsTr("CONFIG")
            anchors.verticalCenter: parent.verticalCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenterOffset: 30
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            level:3
        }

        TextCust {
            id: warnLowFuel
            width: 69
            height: 16
            visible: low && !isCenterTank
            color: "orange"
            text: qsTr("LOW")
            anchors.verticalCenter: parent.verticalCenter
            level:3
            horizontalAlignment: Text.AlignHCenter
            anchors.verticalCenterOffset: 30
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    states: [
        State {
            name: "warning"
            PropertyChanges {
                target: digitalValue
                color: "orange"
            }
            PropertyChanges {
                target: circularDialV2
                warningTogle:true
            }

        },
        State {
            name: "error"
            PropertyChanges {
                target: digitalValue
                color: "red"
            }
            PropertyChanges {
                target: circularDialV2
                errorTogle:true
            }
        }
    ]


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33;height:210;width:210}D{i:1}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}
D{i:8}D{i:2}
}
##^##*/
