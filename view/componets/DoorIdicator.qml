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
        onText: "OPEN"
        clip: false
        anchors.bottomMargin: 0
        togled: true
        offText: "CLOSE"
    }


}




