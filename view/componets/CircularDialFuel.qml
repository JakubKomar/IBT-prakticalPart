import QtQuick
import QtQuick.Shapes
import "../componets"
Item {
    id: circularDialFuel
    width: 210
    height: 210
    property alias circularDialV2: circularDialV2
    property double value: 10000
    property alias analog: analog

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
    Rectangle{
        id: analog
        anchors.fill: parent
        color:"black"
    }
    CircularDialV2 {
        id: circularDialV2
        anchors.verticalCenter: parent.verticalCenter
        scaleText: "K"
        numScale: 1000
        maxValue: 20000
        anchors.horizontalCenter: parent.horizontalCenter

        value: circularDialFuel.value
        minValue: 0
        bigStep:2000
        Rectangle {
            id: digitalField
            x: 59
            width: 153
            height: 100
            color: "#00ffffff"
            radius: 20
            border.color: "#ffffff"
            border.width: 1
            anchors.verticalCenter: parent.verticalCenter

            Text {
                id: description
                x: 37
                y: 2
                color: "#0083ff"
                text: desText
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: digitalValue
                x: 0
                y: 25
                width: 134
                height: 50
                color:warning?"orange": "#ffffff"
                text: value.toFixed(0)
                font.pixelSize: 41
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0
                font.family: "Verdana"
                font.strikeout: false
            }

            Text {
                id: unitsText
                y: 43
                color: "#0083ff"
                text: "LB"
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenterOffset: 66
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: warnImbalance
                x: 8
                y: 76
                width: 75
                height: 16
                visible: inbalance&& !isCenterTank
                color: "#ff9300"
                text: qsTr("IMBALANCE")
                font.pixelSize: 13
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: warnConfig
                x: 76
                y: 76
                width: 69
                height: 16
                visible: config && isCenterTank
                color: "#ff9300"
                text: qsTr("CONFIG")
                font.pixelSize: 13
                horizontalAlignment: Text.AlignHCenter
            }

            Text {
                id: warnLowFuel
                x: 76
                y: 76
                width: 69
                height: 16
                visible: low && !isCenterTank
                color: "#ff9300"
                text: qsTr("LOW")
                font.pixelSize: 13
                horizontalAlignment: Text.AlignHCenter
            }
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
    D{i:0;height:210;width:210}D{i:1}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:3}D{i:2}
}
##^##*/
