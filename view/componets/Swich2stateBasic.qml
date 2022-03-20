import QtQuick
import QtQuick.Controls

Button {
    id:swich2stateWarning
    property alias swich2state:swich2state
    width: 150
    height: 150
    Swich2state {
        id: swich2state
        anchors.fill: parent
    }

}

/*##^##
Designer {
    D{i:0;height:152;width:149}D{i:1}
}
##^##*/
