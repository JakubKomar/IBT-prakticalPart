import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Controls.Universal
import "componets/"
Window {
    id:mainWindow
    width: 1920
    height: 1080
    visible: true

    title: qsTr("Flight display - 737 MAX 10")
    property bool fullscreenEnable: false
    visibility:fullscreenEnable? Window.FullScreen: Window.Windowed
    color: "#000000"
    Rectangle {
        id: frameBc
        color: "#000000"
        width: 1920
        height: 1080
        transform: Scale {xScale: frameBc.scaleVal;yScale:frameBc.scaleVal}
        property double xscaleVal:mainWindow.width/1920
        property double yscaleVal:mainWindow.height/1080
        property double scaleVal: xscaleVal<yscaleVal?xscaleVal:yscaleVal
        Rectangle {
            id: frame
            color: "#000000"
            anchors.fill: parent
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.topMargin: 10

            Rectangle {
                id: contentCont
                color: "#000000"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenterOffset: 78
                anchors.horizontalCenter: parent.horizontalCenter

                width: 1750
                height: 1060

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
                        source: Qt.resolvedUrl("modules/Hydraulic.qml")
                    }
                }
            }
        }

        Rectangle {
            id: menuCont
            x: 10
            y: 10
            width: 156
            color: "#1b1b1b"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#340097ff"
                }

                GradientStop {
                    position: 1
                    color: "#000000"
                }
                orientation: Gradient.Horizontal
            }
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.leftMargin: 0

            Rectangle {
                id: info
                x: 0
                y: -5
                height: 121
                color: "#39000000"
                radius: 8
                border.color: "#73515151"
                border.width: 1
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: -6

                Column {
                    id: column
                    x: 5
                    width: 157
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    spacing: 3
                    anchors.rightMargin: 0
                    anchors.topMargin: 13
                    anchors.bottomMargin: 0

                    Item {
                        id: item1
                        height: 31
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 6

                        TextCust {
                            id: text2
                            x: -6
                            width: 63
                            height: 32
                            color: Styles.blueDark
                            text: qsTr("UTC")
                            anchors.verticalCenter: parent.verticalCenter
                            font.letterSpacing: -2
                            level: 2
                        }

                        TextCust {
                            id: time
                            x: 57
                            width: 94
                            height: 32
                            color: "#ffffff"
                            text: qsTr("12:21:25")
                            anchors.verticalCenter: parent.verticalCenter
                            font.letterSpacing: -1.6
                            horizontalAlignment: Text.AlignRight
                            font.kerning: true
                            textFormat: Text.PlainText
                            level: 2
                        }
                    }

                    Item {
                        id: item2
                        height: 31
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 6
                        anchors.rightMargin: 0

                        TextCust {
                            id: date
                            x: 57
                            width: 94
                            height: 32
                            color: "#ffffff"
                            text: qsTr("12.05.21")
                            anchors.verticalCenter: parent.verticalCenter
                            font.letterSpacing: -1.6
                            horizontalAlignment: Text.AlignRight
                            level: 2
                        }

                        TextCust {
                            id: text5
                            x: -6
                            width: 64
                            height: 32
                            color: Styles.blueDark
                            text: qsTr("DATE")
                            anchors.verticalCenter: parent.verticalCenter
                            font.letterSpacing: -2
                            level: 2
                        }
                    }

                    Item {
                        id: item3
                        height: 31
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.leftMargin: 6
                        anchors.rightMargin: 0

                        TextCust {
                            id: text4
                            x: -5
                            width: 63
                            height: 32
                            color: Styles.blueDark
                            text: qsTr("TAT")
                            anchors.verticalCenter: parent.verticalCenter
                            font.letterSpacing: 2.4
                            level: 2
                        }

                        TextCust {
                            id: tat
                            x: 95
                            width: 26
                            height: 32
                            color: "#ffffff"
                            text: qsTr("-5")
                            anchors.verticalCenter: parent.verticalCenter
                            font.letterSpacing: -1.6
                            horizontalAlignment: Text.AlignRight
                            level: 2
                        }

                        TextCust {
                            id: tatUnit
                            x: 121
                            width: 30
                            height: 32
                            color: Styles.blueDark
                            text: qsTr("C°")
                            anchors.verticalCenter: parent.verticalCenter
                            font.letterSpacing: -1.6
                            horizontalAlignment: Text.AlignRight
                            level: 2
                        }
                    }
                }
            }

            Column {
                id: menuColum
                visible: true
                anchors.fill: parent
                anchors.topMargin: 121
                anchors.bottomMargin: 10
                anchors.leftMargin: -6
                spacing: 5


                MenuItem{
                    id:dashBordButt
                    text: "Dash "
                    wheelEnabled: false
                    activePage: true
                    onClicked: {
                        MainRanderControler.setModuleSelector(0)
                        menuColum.togleButt(this)
                        dashLd.visible=true
                    }
                }

                MenuItem {
                    id: engBtn
                    text: "Eng"
                    onClicked: {
                        MainRanderControler.setModuleSelector(8)
                        menuColum.togleButt(this)
                        engLd.visible=true
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
                    id: ftContBtn
                    visible: true
                    text: "HYDR"
                    onClicked: {
                        MainRanderControler.setModuleSelector(9)
                        menuColum.togleButt(this)
                        ftControlLd.visible=true
                    }

                }



                MenuItem {
                    id: electricalButton
                    text: "ELECT"
                    onClicked: {
                        MainRanderControler.setModuleSelector(5)
                        menuColum.togleButt(this)
                        electLd.visible=true
                    }
                }


                MenuItem {
                    id: bleedButt
                    text: "Bleed Air"
                    warningColor: "#ff8c00"
                    status: 0

                    onClicked: {
                        MainRanderControler.setModuleSelector(2)
                        menuColum.togleButt(this)
                        bleadLd.visible=true
                    }
                }


                MenuItem {
                    id: antiIceBtn
                    visible: true
                    text: "Anti Ice"
                    onClicked: {
                        MainRanderControler.setModuleSelector(6)
                        menuColum.togleButt(this)
                        antiIceLd.visible=true
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
                    id: lightsBtn
                    text: "Light"
                    onClicked: {
                        MainRanderControler.setModuleSelector(7)
                        menuColum.togleButt(this)
                        lightsLd.visible=true
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
                MenuItem {
                    id: doorButton
                    text: "Door"

                    onClicked: {
                        MainRanderControler.setModuleSelector(4)
                        menuColum.togleButt(this)
                        doorLd.visible=true
                    }
                }
            }

            Rectangle {
                id: displayStateBar
                y: 1026
                height: 34
                color: "#003c3c3c"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                anchors.rightMargin: 0
                anchors.leftMargin: 10

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


    }
    Connections{
        target: WarningsRender
        function onSetAnnunciator(name, val){
            switch(name){
            case"apu":{
                engBtn.status=val
                break;
            }
            case"doors":{
                doorButton.status=val
                break;
            }
            case"electrical":{
                electricalButton.status=val
                break;
            }
            case"engine":{
                engBtn.status=val
                break;
            }
            case"fire":{
                if(val===1)
                    engBtn.status=2
                break;
            }
            case"fuel":{
                fuelButt.status=val
                break;
            }
            case"hydraulic":{
                ftContBtn.status=val
                break;
            }
            case"ice":{
                antiIceBtn.status=val
                break;
            }
            case"temp":{
                tempButt.status=val
                break;
            }
            case"flyCont":{
                ftContBtn.status=val
                break;
            }
            default:{}
            }
        }
        function onSetTime(string){
            time.text=string
        }
        function onSetDate(string){
            date.text=string
        }
        function onSetTat(string){
            tat.text=string
        }
    }
}







/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}D{i:12}D{i:13}D{i:14}
D{i:15}D{i:16}D{i:17}D{i:5}D{i:4}D{i:3}D{i:25}D{i:26}D{i:24}D{i:28}D{i:29}D{i:27}
D{i:31}D{i:32}D{i:33}D{i:30}D{i:23}D{i:22}D{i:35}D{i:36}D{i:37}D{i:38}D{i:39}D{i:40}
D{i:41}D{i:42}D{i:43}D{i:44}D{i:34}D{i:48}D{i:47}D{i:50}D{i:49}D{i:52}D{i:51}D{i:53}
D{i:46}D{i:45}D{i:54}D{i:18}D{i:1}D{i:55}
}
##^##*/
