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
            case "taxi":{
                taxiSw.swich2state.togled=state
                taxi.visible=state
                break;
            }
            case "logo":{
                logoSw.swich2state.togled=state
                logo.visible=state
                break;
            }
            case "antiColizion":{
                antiCollisionSw.swich2state.togled=state
                colision.visible=state
                break;
            }
            case "wing":{
                wingSw.swich2state.togled=state
                wing.visible=state
                break;
            }
            case "wheel":{
                wheelSw.swich2state.togled=state
                break;
            }
            default:{}
            }
        }
        function onSetComboSwich(name,lState,rState){
            switch(name){
            case "landing":{
                landingSw.seter(lState,rState)
                lLand.visible=lState
                rLand.visible=rState
                break;
            }
            case "runway":{
                runnwaySw.seter(lState,rState)
                lRunway.visible=lState
                rRunway.visible=rState
                break;
            }
            default:{}
            }
        }
        function onSetStrobe(state){
            strobeSw.position=state
            if(state===0){
                position.visible=true
                strobe.visible=true
            }
            else if(state===2){
                position.visible=true
                strobe.visible=false
            }
            else{
                position.visible=false
                strobe.visible=false
            }
        }
        function onSetEmerGuard(state){
            emergency.guard.guarded=state
        }
        function onSetEmerSwich(state){
            emergency.swich3pos.position=state
        }
        function onSetEmerAnnun(state){
            emerAnnun.indicator.value=state
        }


    }

    Rectangle {
        id: leftSide
        x: 0
        y:0
        width: parent.width/2
        height:  parent.height
        color: "#00ffffff"

        Image {
            id: base
            anchors.fill: parent
            source: "../pic/lights/base.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: rLand
            anchors.fill: parent
            source: "../pic/lights/rLand.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: lLand
            anchors.fill: parent
            source: "../pic/lights/lLand.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: rRunway
            anchors.fill: parent
            source: "../pic/lights/rRunway.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: lRunway
            anchors.fill: parent
            source: "../pic/lights/lRunway.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: strobe
            anchors.fill: parent
            source: "../pic/lights/strobe.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: colision
            anchors.fill: parent
            source: "../pic/lights/colision.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: logo
            anchors.fill: parent
            source: "../pic/lights/logo.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: position
            anchors.fill: parent
            source: "../pic/lights/position.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: taxi
            anchors.fill: parent
            source: "../pic/lights/taxi.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: wing
            anchors.fill: parent
            source: "../pic/lights/wing.png"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }

        ModuleDescription {
            id: moduleDescription
            x: 875
            y: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "LIGHTS overview"
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

    }
    Rectangle {
        id: rightSide
        x: parent.width/2
        y:0
        width: parent.width/2
        height:  parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"

        Swich2stateBasic {
            id: taxiSw
            y: 136
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter
            swich2state.description: "TAXI"
            onClicked: {
                ControlLights.swichTogle("taxi")
            }
        }

        Swich3pos {
            id: strobeSw
            y: 486
            width: 364
            height: 150
            anchors.horizontalCenterOffset: -1
            anchors.horizontalCenter: parent.horizontalCenter
            textWidth: 18
            textPos3: "STEADY"
            textPos2: "OFF"
            textPos1: "STROBE\n&\nSTEADY"
            button1.onClicked: {ControlLights.positionLightSet(0, strobeSw.position)}
            button2.onClicked: {ControlLights.positionLightSet(1, strobeSw.position)}
            button3.onClicked: {ControlLights.positionLightSet(2, strobeSw.position)}

            ModuleDescription {
                id: moduleDescription5
                x: -114
                y: -45
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 165
                anchors.rightMargin: 0
                description: "POSITION"
                anchors.leftMargin: 0
            }
        }

        Swich2stateBasic {
            id: logoSw
            x: 30
            y: 486
            swich2state.description: "LOGO"
            onClicked: {ControlLights.swichSet("logo",this.swich2state.togled)}
        }

        Swich2stateBasic {
            id: antiCollisionSw
            x: 695
            y: 486
            swich2state.description: "ANTI\nCOLLISION"
            onClicked: {
                ControlLights.swichTogle("anitcollision")
            }
        }

        Swich2stateBasic {
            id: wingSw
            x: 524
            y: 813
            swich2state.description: "WING"
            onClicked: {ControlLights.swichSet("wing",this.swich2state.togled)}
        }

        Swich2stateBasic {
            id: wheelSw
            x: 695
            y: 813
            swich2state.description: "WHEEL\nWELL"
            onClicked: {ControlLights.swichSet("wheelWell",this.swich2state.togled)}
        }

        ModuleDescription {
            id: moduleDescription1
            x: 102
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.leftMargin: 474
            description: "SERVICE LIGHTS"
            anchors.topMargin: 745
            anchors.rightMargin: 0
        }

        ModuleDescription {
            id: moduleDescription2
            x: 102
            height: 30
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 745
            anchors.leftMargin: 30
            description: "EMERGENCY"
            anchors.rightMargin: 444
        }

        Guarded3Swich {
            id: emergency
            x: 42
            y: 813
            width: 346
            height: 156
            swich3pos.button1.onClicked: {ControlLights.positionEmer(0 ,emergency.swich3pos.position)}
            swich3pos.button2.onClicked: {ControlLights.positionEmer(1 ,emergency.swich3pos.position)}
            swich3pos.button3.onClicked: {ControlLights.positionEmer(2 ,emergency.swich3pos.position)}
            guard.onGuard:{ControlLights.emerGuardSet()}
            guard.onUnGuard:{ControlLights.emerGuardSet()}
        }

        ComboSwich {
            id: landingSw
            y: 136
            anchors.left: parent.left
            anchors.leftMargin: 30
            rightButt.description: "right"
            margeButt.description: "both"
            leftButt.description: "left"
            onLeftButClicked:{
                ControlLights.swichTogle("landingL")
            }
            onRightButClicked:{
                ControlLights.swichTogle("landingR")
            }
            onMergeButClicked:{
                ControlLights.swichSet("landing",landingSw.leftState)
            }

            ModuleDescription {
                id: moduleDescription3
                y: -43
                anchors.left: parent.left
                anchors.right: parent.right
                description: "LANDING"
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

        }

        ComboSwich {
            id: runnwaySw
            x: 555
            y: 140
            anchors.right: parent.right
            anchors.rightMargin: 31
            rightButt.description: "right"
            margeButt.description: "both"
            leftButt.description: "left"
            onLeftButClicked:{
                ControlLights.swichSet("runwayL",runnwaySw.leftState)
            }
            onRightButClicked:{
                ControlLights.swichSet("runwayR",runnwaySw.rightState)
            }
            onMergeButClicked:{
                ControlLights.swichSet("runway",runnwaySw.leftState)
            }

            ModuleDescription {
                id: moduleDescription4
                x: -344
                y: -43
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                description: "RUNWAY"
                anchors.leftMargin: 0
            }
        }

        ModuleDescription {
            id: moduleDescription6
            x: 873
            y: 9
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            description: "LIGHTS CONTROL"
        }

        HalfTransparentBorder {
            id: halfTransparentBorder1
            y: 370
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        HalfTransparentBorder {
            id: halfTransparentBorder2
            y: 702
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        WarningIndicator {
            id: emerAnnun
            x: 161
            y: 961
            indicator.borderCol: "#00484848"
            indicator.borderWidth: 0
            warText: "not\narmed"
            status: 0
        }
    }

    HalfTransparentBorder {
        id: halfTransparentBorder
        width: 1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        vert: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0
        anchors.bottomMargin: 0
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.2}D{i:1}D{i:2}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:3}D{i:17}D{i:19}D{i:18}D{i:20}D{i:21}D{i:22}D{i:23}
D{i:24}D{i:25}D{i:26}D{i:28}D{i:27}D{i:30}D{i:29}D{i:31}D{i:32}D{i:33}D{i:34}D{i:16}
D{i:35}
}
##^##*/
