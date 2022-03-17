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
    TextCust {
        id: text1
        color: "#0097ff"
        text: description
        anchors.fill: parent
        font.letterSpacing: -0.2
        level:3
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
        anchors.bottomMargin: 39
        anchors.leftMargin: 0
        anchors.topMargin: 0
    }


    TextCust {
        id: text2
        color: "green"
        text: qsTr("DWN")
        anchors.fill: parent
        font.letterSpacing: -1.6
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.topMargin: 19

    }
    states: [
        State {
            name: "transit"
            PropertyChanges {
                target: text2
                color: "red"
                text: qsTr("TRAN")
            }
        },
        State {
            name: "up"
            PropertyChanges {
                target: text2
                color: "white"
                text: qsTr("UP")
                style: Text.Normal
            }
        }
    ]


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.66;height:60;width:60}D{i:1}D{i:2}
}
##^##*/
