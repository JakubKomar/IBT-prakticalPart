import QtQuick
import QtQuick.Controls

Button {
    id:swich2stateWarning
    width:swich2state.width
    height: swich2state.height
    property alias swich2state:swich2state
    Swich2state {
        id: swich2state
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}
}
##^##*/
