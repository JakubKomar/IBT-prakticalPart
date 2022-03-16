import QtQuick 2.0

Rectangle {
    id:landingGearStutus
    property bool inTransit: false
    property bool openLock: false
    property string description:"LEFT"
    width: 50
    height: 50
    color: "black"
    radius: 4
    border.color: "#ffffff"
    state:{inTransit?"transit":openLock?"":"up"}
    Text {
        id: text1
        color: "#0097ff"
        text: description
        anchors.fill: parent
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.rightMargin: 0
        anchors.bottomMargin: 41
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }

    Rectangle {
        id: rectangle1
        x: 1
        y: 19
        color: "green"
        radius: 4
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 18
        anchors.bottomMargin: 1
        anchors.rightMargin: 1
        anchors.leftMargin: 1

        Text {
            id: text2
            color: "#ffffff"
            text: qsTr("DOWN")
            anchors.fill: parent
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Verdana"
        }
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 18
        height: 1
        color: "#ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0
    }
    states: [
        State {
            name: "transit"

            PropertyChanges {
                target: rectangle1
                color: "#ff0000"
            }

            PropertyChanges {
                target: text2
                color: "#ffffff"
                text: qsTr("TRAN")
            }
        },
        State {
            name: "up"
            PropertyChanges {
                target: rectangle1
                color: "#000000"
            }

            PropertyChanges {
                target: text2
                color: "#ffffff"
                text: qsTr("UP")
                style: Text.Normal
            }

            PropertyChanges {
                target: text1
                font.capitalization: Font.AllUppercase
            }
        }
    ]


}

/*##^##
Designer {
    D{i:0;height:60;width:60}D{i:1}D{i:3}D{i:2}D{i:4}
}
##^##*/
