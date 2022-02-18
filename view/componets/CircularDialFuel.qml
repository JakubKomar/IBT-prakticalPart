import QtQuick
import QtQuick.Shapes
import "../componets"
Item {
    id: circularDialFuel
    width: 210
    height: 210
    property alias circularDialV2: circularDialV2
    property double value: 10000
    property double warningValue:-1
    property alias analog: analog

    property string desText:"Description"
    property string units:"Units"

    state:{
        if(value<circularDialV2.minValue||value>circularDialV2.maxValue){
            "error"
        }
        else if(value<warningValue){
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
            width: 143
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
                x: 53
                y: 26
                color: "#ffffff"
                text: value.toFixed(0)
                font.pixelSize: 41
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0
                font.family: "Verdana"
                anchors.horizontalCenterOffset: -1
                font.strikeout: false
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: unitsText
                x: 56
                y: 69
                color: "#0083ff"
                text: "LB"
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
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
    D{i:0;formeditorZoom:0.9}D{i:1}D{i:4}D{i:5}D{i:6}D{i:3}D{i:2}
}
##^##*/
