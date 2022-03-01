import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Universal
import "componets/"
Window {
    id:mainWindow
    width: 1920
    height: 1080
    /*maximumHeight: height
    maximumWidth: width

   minimumHeight: height
    minimumWidth: width*/
    visible: true

    title: qsTr("Letecký display")
    property bool fullscreenEnable: false
    visibility:fullscreenEnable? Window.FullScreen: Window.Windowed

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
                width: 146
                color: "#1b1b1b"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 0

                Column {
                    id: menuColum
                    visible: true
                    anchors.fill: parent
                    spacing: 7
                    MenuItem{
                        id:dashBordButt
                        text: "Dash "
                        activePage: true
                        onClicked: {
                            MainRanderControler.setModuleSelector(0)
                            contentLoader.setSource("modules/DashBoard.qml")
                            menuColum.togleButt(this)
                        }
                    }

                    MenuItem{
                        id:fuelButt
                        text: "Fuel"
                        onClicked: {
                            MainRanderControler.setModuleSelector(1)
                            contentLoader.setSource("modules/Fuel.qml")
                            menuColum.togleButt(this)
                        }
                    }

                    MenuItem {
                        id: bleedButt
                        text: "Bleed Air"

                        onClicked: {
                            MainRanderControler.setModuleSelector(2)
                            contentLoader.setSource("modules/BleedAir.qml")
                            menuColum.togleButt(this)
                        }
                    }

                    MenuItem {
                        id: enginesButt
                        text: "Temp"

                        onClicked: {
                            MainRanderControler.setModuleSelector(3)
                            contentLoader.setSource("modules/TempControl.qml")
                            menuColum.togleButt(this)
                        }
                    }

                    MenuItem {
                        id: doorButton
                        text: "Doors"

                        onClicked: {
                            MainRanderControler.setModuleSelector(4)
                            contentLoader.setSource("modules/Doors.qml")
                            menuColum.togleButt(this)
                        }
                    }
                    function unTogleAll(){
                        for (var i = 0; i < menuColum.children.length; ++i)
                            menuColum.children[i].activePage = false;
                    }
                    function togleButt(toTogle){
                        menuColum.unTogleAll()
                        toTogle.activePage=true
                    }
                }

                Rectangle {
                    id: displayStateBar
                    y: 1026
                    height: 34
                    color: "#3c3c3c"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0

                    Row {
                        id: row
                        anchors.fill: parent
                        spacing: 1


                        Button {
                            id: closeWindowButton
                            width: 35
                            height: 35
                            anchors.topMargin: 5
                            font.pointSize: 18
                            onClicked: {
                                onClicked: mainWindow.close();
                            }
                            Text{
                                text: qsTr("X")
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                font.pointSize: 28
                                color:"orange"
                            }
                        }

                        Button {
                            id: fullScreenButton
                            width: 35
                            height: 35
                            anchors.topMargin: 5
                            font.pointSize: 18
                            Text {
                                color: "#ffa500"
                                text: qsTr("F")
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                anchors.rightMargin: 0
                                anchors.bottomMargin: 0
                                anchors.leftMargin: 0
                                anchors.topMargin: 0
                                font.pointSize: 28
                            }
                            onClicked:  {
                                fullscreenEnable=!fullscreenEnable
                            }
                        }

                        Button {
                            id: setingsButt
                            width: 35
                            height: 35
                            anchors.topMargin: 5
                            Text {
                                color: "#ffa500"
                                text: qsTr("S")
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                                anchors.rightMargin: 0
                                anchors.bottomMargin: 1
                                anchors.leftMargin: 0
                                anchors.topMargin: -1
                                font.pointSize: 28
                            }
                            font.pointSize: 18

                            onClicked: {
                                contentLoader.setSource("modules/ProgramConfig.qml")
                            }
                        }
                        BusyIndicator {
                            id: connectionLost
                            width: 35
                            height: 35
                            visible: false
                            Universal.accent: Universal.Orange
                        }
                    }
                }
                Connections{
                    target: MainRanderControler

                    function onSetConnStatus(state){
                        connectionLost.visible=state
                    }
                }
            }

            Rectangle {
                id: contentCont
                color: "#000000"
                anchors.fill: parent
                anchors.leftMargin: menuCont.width
                property double xscaleVal:contentCont.width/1750
                property double yscaleVal:contentCont.height/1060
                property double scaleVal: xscaleVal<yscaleVal?xscaleVal:yscaleVal
                transform: Scale {xScale: contentCont.scaleVal;yScale:contentCont.scaleVal}
                Loader {
                    id: contentLoader
                    width: 1750
                    height: 1060

                    clip: true
                    source: Qt.resolvedUrl("modules/DashBoard.qml")
                }
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:4}D{i:13}D{i:12}D{i:15}
D{i:14}D{i:17}D{i:16}D{i:18}D{i:11}D{i:10}D{i:19}D{i:3}D{i:22}D{i:20}D{i:2}D{i:1}
}
##^##*/
