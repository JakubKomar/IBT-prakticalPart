import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:lights

    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"
    Connections{
        target:ControlLights
    }
    Connections{
        target:LightsRender

        function onSetSwich(name,state){
            switch(name){
            case "landingL":{
                landingL.swich2state.togled=state
                break;
            }
            case "landingR":{
                landingR.swich2state.togled=state
                break;
            }
            case "runwayL":{
                runwayLeft.swich2state.togled=state
                break;
            }
            case "runwayR":{
                runwayRight.swich2state.togled=state
                break;
            }
            case "taxi":{
                taxi.swich2state.togled=state
                break;
            }
            case "logo":{
                logo.swich2state.togled=state
                break;
            }
            case "antiColizion":{
                antiCollision.swich2state.togled=state
                break;
            }
            case "wing":{
                wing.swich2state.togled=state
                break;
            }
            case "wheel":{
                wheel.swich2state.togled=state
                break;
            }
            default:{}
            }
        }
        function onSetStrobe(state){
            strobe.position=state
        }
    }

    Rectangle {
        id: leftSide
        x: 0
        y:0
        width: parent.width/2
        height:  parent.height
        color: "#00ffffff"
        border.color: "#ffffff"

        ModuleDescription {
            id: moduleDescription
            x: 102
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "LIGHTS"
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        Swich2stateBasic {
            id: landingL
            x: 20
            y: 198
            swich2state.textWidthDescription: 27
            swich2state.description: "LEFT"
            onClicked: {ControlLights.swichTogle("landingL")}
        }

        Swich2stateBasic {
            id: landingR
            x: 169
            y: 198
            swich2state.textWidthDescription: 27
            swich2state.description: "RIGHT"
            onClicked: {ControlLights.swichTogle("landingR")}
        }

        Swich2stateBasic {
            id: runwayLeft
            x: 370
            y: 198
            swich2state.description: "LEFT"
            onClicked: {ControlLights.swichSet("runwayL",this.swich2state.togled)}
        }

        Swich2stateBasic {
            id: runwayRight
            x: 519
            y: 198
            swich2state.description: "RIGHT"
            onClicked: {ControlLights.swichSet("runwayR",this.swich2state.togled)}
        }

        Swich2stateBasic {
            id: taxi
            x: 705
            y: 198
            swich2state.description: "TAXI"
            onClicked: {
                ControlLights.swichTogle("taxi")
            }
        }

        Swich3pos {
            id: strobe
            x: 693
            y: 515
            width: 364
            height: 133
            anchors.horizontalCenter: parent.horizontalCenter
            textWidth: 18
            textPos3: "STEADY"
            textPos2: "OFF"
            textPos1: "STROBE &\nSTEADY"
            button1.onClicked: {ControlLights.positionLightSet(0, strobe.position)}
            button2.onClicked: {ControlLights.positionLightSet(1, strobe.position)}
            button3.onClicked: {ControlLights.positionLightSet(2, strobe.position)}
        }

        Row {
            id: row
            x: 8
            y: 756
            height: 156
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 78
            anchors.rightMargin: 20
            anchors.leftMargin: 20

            Swich2stateBasic {
                id: logo
                swich2state.description: "LOGO"
                onClicked: {ControlLights.swichSet("logo",this.swich2state.togled)}
            }

            Swich2stateBasic {
                id: antiCollision
                swich2state.textWidthDescription: 20
                swich2state.description: "ANTI\nCOLLISION"
                onClicked: {
                    ControlLights.swichTogle("anitcollision")
                }
            }

            Swich2stateBasic {
                id: wing
                swich2state.description: "WING"
                onClicked: {ControlLights.swichSet("wing",this.swich2state.togled)}
            }

            Swich2stateBasic {
                id: wheel
                swich2state.description: "WHEEL\nWELL"
                onClicked: {ControlLights.swichSet("wheelWell",this.swich2state.togled)}
            }
        }

        Text {
            id: text1
            x: 109
            y: 152
            color: "#ffffff"
            text: qsTr("LANDING")
            font.pixelSize: 30
        }

        Text {
            id: text2
            x: 461
            y: 152
            color: "#ffffff"
            text: qsTr("RUNWAY")
            font.pixelSize: 30
        }

        Text {
            id: text3
            y: 458
            color: "#ffffff"
            text: qsTr("POZITION")
            font.pixelSize: 30
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    Rectangle {
        id: rightSide
        x: parent.width/2
        y:0
        width: parent.width/2
        height:  parent.height
        color: "#00ffffff"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:1}D{i:2}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:11}D{i:16}D{i:17}D{i:18}D{i:3}D{i:19}
}
##^##*/
