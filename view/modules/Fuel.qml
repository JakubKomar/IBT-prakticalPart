import QtQuick
import QtQuick.Controls

Item {
    id: fuelMod
    width: 1650
    height: 1060
    Rectangle {
        id: rectangle
        color: "#000000"
        anchors.fill: parent

        Button {
            id: leftPump
            width: 217
            height: 118
            text: qsTr("Pumpa")
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            property color bcColor: "#ff0000"

            background: Rectangle {
                  color: leftPump.bcColor
            }

            onClicked: {
                ControlFuel.toglePump()
            }
        }
    }
    Connections{
        target:ControlFuel
    }
    Connections{
        target:RenderFuel

        function onSetPumpState(state){
            switch(state){
                case 1:
                    leftPump.bcColor= "#00ff00"
                    break;
                default:
                    leftPump.bcColor="#ff0000"
                    break;
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:2}D{i:1}D{i:4}D{i:5}
}
##^##*/
