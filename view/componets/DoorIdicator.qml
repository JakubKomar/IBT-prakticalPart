import QtQuick

Item{
    id: doorIndicator

    width: 140
    height: 140
    property alias swich2state: swich2state

    Swich2state{
        id: swich2state
        radius: 30
        border.color: "#4c4c4c"
        anchors.fill: parent
        onColor: "#ffae00"
        onText: "OPEN"
        clip: false
        text2.horizontalAlignment: Text.AlignHCenter
        text2.verticalAlignment: Text.AlignVCenter
        anchors.bottomMargin: 0
        statusText.horizontalAlignment: Text.AlignHCenter
        statusText.verticalAlignment: Text.AlignVCenter
        togled: true
        offText: "CLOSE"
        offColor: "#09ff00"
    }


}



/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:1}
}
##^##*/
