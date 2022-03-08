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
                            menuColum.togleButt(this)
                            dashLd.visible=true
                        }
                    }

                    MenuItem{
                        id:fuelButt
                        text: "Fuel"
                        onClicked: {
                            MainRanderControler.setModuleSelector(1)
                            menuColum.togleButt(this)
                            fuelLd.visible=true
                        }
                    }

                    MenuItem {
                        id: bleedButt
                        text: "Bleed Air"

                        onClicked: {
                            MainRanderControler.setModuleSelector(2)
                            menuColum.togleButt(this)
                            bleadLd.visible=true
                        }
                    }

                    MenuItem {
                        id: tempButt
                        text: "Temp"

                        onClicked: {
                            MainRanderControler.setModuleSelector(3)                  
                            menuColum.togleButt(this)
                            tempLd.visible=true
                        }
                    }

                    MenuItem {
                        id: doorButton
                        text: "Doors"

                        onClicked: {
                            MainRanderControler.setModuleSelector(4)
                            menuColum.togleButt(this)
                            doorLd.visible=true
                        }
                    }

                    MenuItem {
                        id: electricalButton
                        text: "Electrical"
                        onClicked: {
                            MainRanderControler.setModuleSelector(5)
                            menuColum.togleButt(this)
                            electLd.visible=true
                        }
                    }

                    MenuItem {
                        id: electricalButton1
                        text: "AntiIce"
                        onClicked: {
                            MainRanderControler.setModuleSelector(6)
                            menuColum.togleButt(this)
                            antiIceLd.visible=true
                        }
                    }

                    MenuItem {
                        id: electricalButton2
                        text: "Lights"
                        onClicked: {
                            MainRanderControler.setModuleSelector(7)
                            menuColum.togleButt(this)
                            lightsLd.visible=true
                        }
                    }

                    MenuItem {
                        id: electricalButton3
                        text: "Eng"
                        onClicked: {
                            MainRanderControler.setModuleSelector(8)
                            menuColum.togleButt(this)
                            engLd.visible=true
                        }
                    }

                    MenuItem {
                        id: electricalButton4
                        text: "FtControl"
                        onClicked: {
                            MainRanderControler.setModuleSelector(9)
                            menuColum.togleButt(this)
                            ftControlLd.visible=true
                        }

                    }
                    function unTogleAll(){
                        for (var i = 0; i < menuColum.children.length; ++i){
                            menuColum.children[i].activePage = false;
                        }
                        for (var j = 0; j < contentLoader.children.length; ++j){
                            contentLoader.children[j].visible = false;
                        }
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
                                setingsLd.visible=true
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
                Item {
                    id: contentLoader
                    width: 1750
                    height: 1060

                    clip: true
                    Loader{
                        id: dashLd
                        anchors.fill: parent
                        visible: true
                        source: Qt.resolvedUrl("modules/DashBoard.qml")
                    }
                    Loader{
                        id: fuelLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/Fuel.qml")
                    }
                    Loader{
                        id: bleadLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/BleedAir.qml")
                    }
                    Loader{
                        id: doorLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/Doors.qml")
                    }
                    Loader{
                        id: tempLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/TempControl.qml")
                    }
                    Loader{
                        id: programLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/ProgramConfig.qml")
                    }
                    Loader{
                        id: electLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/Electrical.qml")
                    }
                    Loader{
                        id: setingsLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/ProgramConfig.qml")
                    }
                    Loader{
                        id: antiIceLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/AntiIce.qml")
                    }
                    Loader{
                        id: lightsLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/Lights.qml")
                    }
                    Loader{
                        id: engLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/Engine.qml")
                    }
                    Loader{
                        id: ftControlLd
                        anchors.fill: parent
                        visible: false
                        source: Qt.resolvedUrl("modules/FlyControl.qml")
                    }
                }
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}D{i:12}D{i:13}
D{i:14}D{i:4}D{i:18}D{i:17}D{i:20}D{i:19}D{i:22}D{i:21}D{i:23}D{i:16}D{i:15}D{i:24}
D{i:3}D{i:28}D{i:29}D{i:30}D{i:31}D{i:32}D{i:33}D{i:34}D{i:35}D{i:36}D{i:37}D{i:38}
D{i:39}D{i:27}D{i:25}D{i:2}D{i:1}
}
##^##*/
