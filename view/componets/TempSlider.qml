import QtQuick
import QtQuick.Controls

Slider {
    id: custSlider
    width: 437
    height: 40
    touchDragThreshold: 0
    property double pading: 0.5
    property int textPading: 6
    property double deadZone: 0.07
    snapMode: RangeSlider.SnapAlways
    stepSize: 0.01
    to: 1
    from: 0
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    value: 0.5

    background: Rectangle{
        id: rectangle1
        x:0
        y:parent.height*pading/2
        width:parent.width
        height:parent.height-(parent.height*pading)
        color: "black"
        border.color: "white"
        radius: 5

        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop { position: 0.0; color: "#00a8de" }
            GradientStop { position: 0.5; color: "white" }
            GradientStop { position: 1.0; color: "#ffea00" }

        }

        Text {
            id: text1
            x: parent.width-width-textPading
            text: qsTr("WARM")
            anchors.verticalCenter: parent.verticalCenter
            anchors.bottom: rectangle1.bottom
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: text2
            text: qsTr("AUTO")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: text3
            x: deadZone*(to-from)* parent.width + textPading
            text: qsTr("COLD")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 14
        }
        Rectangle{
            x:1
            y:1
            width: deadZone*(to-from)* parent.width
            height: parent.height-2
            color: "black"
            radius: 5
            Text {
                id: text4
                anchors.verticalCenter: parent.verticalCenter
                color: "#ffffff"
                text: qsTr("OFF")
                font.pixelSize: 14
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
    handle: Rectangle {
        id: rectangle
        x:  (value-from)/(to-from)*(parent.width-width)
        color: "#dcffffff"
        implicitWidth: 50
        implicitHeight: parent.height
        radius: 10
        border.width: 2
        border.color: "#bdbebf"
        Text {
            id: name
            color: "#808080"
            text: qsTr("||")
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: -7
            font.pointSize: 18
        }

    }
    function setVal(val){
        value= val
    }
    function getVal(){
        return value
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:7}
}
##^##*/
