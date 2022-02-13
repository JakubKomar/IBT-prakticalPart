import QtQuick
import QtQuick.Controls
import "../componets"
Item {
    id: fuelMod
    width: 1750
    height: 1060
    Rectangle {
        id: rectangle
        color: "#000000"
        anchors.fill: parent

        Swich2crossFeedInfo {
            id: swich2crossFeedInfo1
            x: 696
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 400
            anchors.rightMargin: 800
            anchors.leftMargin: 800
        }

        PumpCombo {
            id: pumpCombo
            x: 296
            y: 740
        }

        PumpCombo {
            id: pumpCombo1
            x: 715
            y: 634
        }

        PumpCombo {
            id: pumpCombo2
            x: 1124
            y: 740
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
    D{i:0;formeditorZoom:1.25}D{i:2}D{i:3}D{i:4}D{i:5}D{i:1}D{i:6}D{i:7}
}
##^##*/
