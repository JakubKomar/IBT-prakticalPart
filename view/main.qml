import QtQuick
import QtQuick.Window
import QtQuick.Controls
import "componets/"
Window {
    id:mainWindow
    width: 1900
    height: 1000
    visible: true
    title: qsTr("Letecký display")
    //visibility: Window.FullScreen

    Rectangle {
        id: frameBc
        color: "#2b2b2b"
        anchors.fill: parent

        Rectangle {
            id: frame
            color: "#000000"
            anchors.fill: parent
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.topMargin: 10

            Rectangle {
                id: menuCont
                x: 940
                y: 490
                width: 250
                color: "#1b1b1b"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 0

                Column {
                    id: column
                    anchors.fill: parent
                    spacing: 7
                    MenuItem{
                        id:dashBordButt
                        text: "Dash board"
                        onClicked: {
                            console.log("dwdaw")
                            contentLoader.setSource("modules/DashBoard.qml")
                        }
                    }

                    MenuItem{
                        id:fuelButt
                        text: "Fuel"
                        onClicked: {
                            console.log("dwdaw2")
                            contentLoader.setSource("modules/Fuel.qml")
                        }
                    }
                }
            }

            Rectangle {
                id: contentCont
                color: "#000000"
                anchors.fill: parent
                anchors.leftMargin: menuCont.width

                Loader {
                    id: contentLoader
                    anchors.fill: parent
                    clip: true
                    source: Qt.resolvedUrl("modules/DashBoard.qml")
                }
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:5}D{i:6}D{i:4}D{i:3}D{i:8}D{i:7}D{i:2}D{i:1}
}
##^##*/
