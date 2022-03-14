import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:lights

    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"

    Swich2stateBasic {
        id: landingL
        x: 112
        y: 152
        swich2state.textWidthDescription: 27
        swich2state.description: "LANDING\nLEFT"
        onClicked: {ControlLights.swichTogle("landingL")}
    }

    Swich2stateBasic {
        id: landingR
        x: 268
        y: 152
        swich2state.textWidthDescription: 27
        swich2state.description: "LANDING\nRIGHT"
        onClicked: {ControlLights.swichTogle("landingR")}
    }

    Swich2stateBasic {
        id: runwayLeft
        x: 112
        y: 370
        swich2state.description: "RUNWAY\nLEFT"
        onClicked: {ControlLights.swichSet("runwayL",this.swich2state.togled)}
    }

    Swich2stateBasic {
        id: runwayRight
        x: 268
        y: 370
        swich2state.description: "RUNWAY\nRIGHT"
        onClicked: {ControlLights.swichSet("runwayR",this.swich2state.togled)}
    }

    Swich2stateBasic {
        id: taxi
        x: 176
        y: 582
        swich2state.description: "TAXI"
        onClicked: {
            ControlLights.swichTogle("taxi")
        }
    }

    Swich2stateBasic {
        id: logo
        x: 1118
        y: 388
        swich2state.description: "LOGO"
        onClicked: {ControlLights.swichSet("logo",this.swich2state.togled)}
    }

    Swich2stateBasic {
        id: antiCollision
        x: 1274
        y: 388
        swich2state.textWidthDescription: 20
        swich2state.description: "ANTI\nCOLLISION"
        onClicked: {
            ControlLights.swichTogle("anitcollision")
        }
    }

    Swich2stateBasic {
        id: wing
        x: 1430
        y: 388
        swich2state.description: "WING"
        onClicked: {ControlLights.swichSet("wing",this.swich2state.togled)}
    }

    Swich3pos {
        id: strobe
        x: 1199
        y: 223
        textWidth: 18
        textPos3: "STEADY"
        textPos2: "OFF"
        textPos1: "STROBE &\nSTEADY"
        button1.onClicked: {ControlLights.positionLightSet(0, strobe.position)}
        button2.onClicked: {ControlLights.positionLightSet(1, strobe.position)}
        button3.onClicked: {ControlLights.positionLightSet(2, strobe.position)}
    }

    Swich2stateBasic {
        id: wheel
        x: 1581
        y: 388
        swich2state.description: "WHEEL\nWELL"
        onClicked: {ControlLights.swichSet("wheelWell",this.swich2state.togled)}
    }
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
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}
D{i:11}D{i:12}
}
##^##*/
