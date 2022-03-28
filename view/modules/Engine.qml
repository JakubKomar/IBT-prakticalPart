/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-29 01:14:50
  * @ Description: engine  module
 */

import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:engines

    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"

    Rectangle {
        id: leftSide
        x: 0
        y: 0
        width: 876
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"

        Column {
            id: column
            anchors.fill: parent

            Item {
                id: engSetings
                height: 655
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Swich3pos {
                    id: ignition
                    x: 288
                    y: 98
                    anchors.horizontalCenterOffset: 0
                    textWidth: 33
                    textPos2: "BOTH"
                    textPos3: "IGN\nR"
                    textPos1: "IGN\nL"
                    anchors.horizontalCenter: parent.horizontalCenter
                    button1.onClicked: {ControlEngine.setIgnitionSpliter(-1)}
                    button2.onClicked: {ControlEngine.setIgnitionSpliter(0)}
                    button3.onClicked: {ControlEngine.setIgnitionSpliter(1)}
                }

                TextCust {
                    id: text7
                    x: 357
                    y: 58
                    color: "#00a8ff"
                    text: qsTr("IGNITION")
                    level: 2
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                ModuleDescription {
                    id: moduleDescription
                    x: 102
                    y: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                }

                EngineStarter {
                    id: eng2Starter
                    x: 544
                    y: 283
                    height: 100
                    position: 1
                    onRightEvent: {ControlEngine.setIgnition(2,true)}
                    onLeftEvent: {ControlEngine.setIgnition(2,false)}
                }

                TextCust {
                    id: textCust
                    x: 377
                    y: 302
                    color: Styles.blueDark
                    text: "STARTER\nMOD"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 2
                }

                EngineStarter {
                    id: eng1Starter
                    x: 123
                    y: 283
                    height: 100
                    onRightEvent: {ControlEngine.setIgnition(1,true)}
                    onLeftEvent: {ControlEngine.setIgnition(1,false)}
                }

                EngIdleSwich {
                    id: eng2Idle
                    x: 572
                    y: 403
                    swich2stateAltVert.togled: false
                    guard.onUnGuard: {guard.guarded=false}
                    guard.onGuard: {guard.guarded=true}
                    swich2stateAltVert.button1.onClicked:{
                        ControlEngine.setMixure(2,1)
                        guard.guarded=true
                    }
                    swich2stateAltVert.button2.onClicked:{
                        ControlEngine.setMixure(2,0)
                    }
                }

                EngIdleSwich {
                    id: eng1Idle
                    x: 151
                    y: 403
                    guard.onUnGuard: {guard.guarded=false}
                    guard.onGuard: {guard.guarded=true}
                    swich2stateAltVert.button1.onClicked:{
                        ControlEngine.setMixure(1,1)
                        guard.guarded=true
                    }
                    swich2stateAltVert.button2.onClicked:{
                        ControlEngine.setMixure(1,0)
                    }
                }

                ModuleDescription {
                    id: moduleDescription2
                    x: 100
                    y: 230
                    height: 30
                    anchors.left: parent.left
                    anchors.right: parent.right
                    lineCol: Styles.blueDark
                    description: "ENGINE 1"
                    anchors.rightMargin: 488
                    anchors.leftMargin: 70
                }

                ModuleDescription {
                    id: moduleDescription3
                    x: 106
                    y: 230
                    height: 30
                    lineCol: Styles.blueDark
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 491
                    anchors.rightMargin: 67
                    description: "ENGINE 2"
                }

                TextCust {
                    id: textCust1
                    x: 393
                    y: 503
                    color: Styles.blueDark
                    text: "IDLE\nSWICH"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    level: 2
                }

            }

            Item {
                id: apu
                y: 656
                height: 414
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Rectangle {
                    id: apuModule
                    color: "#00ffffff"
                    border.color: "#00ffffff"
                    border.width: 2
                    anchors.fill: parent

                    ModuleDescription {
                        id: moduleDescription1
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        description: "APU"
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                    }

                    Verticalndicator {
                        id: apuTemp
                        y: 307
                        width: 528
                        height: 61
                        anchors.horizontalCenterOffset: 0
                        anchors.horizontalCenter: parent.horizontalCenter
                        maxVal: 110
                        minVal: 0
                    }

                    Swich3posVert {
                        id: apuControler
                        y: 107
                        width: 122
                        height: 261
                        anchors.horizontalCenterOffset: -331
                        anchors.horizontalCenter: parent.horizontalCenter
                        textWidth: 31
                        textPos3: "START"
                        textPos2: "ON"

                        button1.onClicked: {
                            ControlEngine.setApuSwich(0, apuControler.position)
                        }
                        button2.onClicked: {
                            ControlEngine.setApuSwich(1, apuControler.position)
                        }
                        button3.onClicked: {
                            ControlEngine.setApuSwich(2, apuControler.position)
                        }

                    }

                    ApuStatus {
                        id: apuStatus
                        y: 107
                        width: 140
                        height: 80
                        radius: 6
                        border.width: 1
                        anchors.horizontalCenterOffset: 0
                        anchors.horizontalCenter: parent.horizontalCenter
                        swichOnOff: 0
                        running: true
                        fire: false
                    }

                    TextCust {
                        id: text3
                        y: 267
                        color: "#00a8ff"
                        text: qsTr("Temperature")
                        level:2
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.horizontalCenterOffset: 0
                    }

                    Column {
                        id: column1
                        x: 700
                        y: 107
                        width: 140
                        height: 261

                        InfoIndicator {
                            id: maint
                            description: "MAINT"
                        }

                        WarningIndicator {
                            id: lowOilPress
                            warText: "LOW OIL\nPRESSURE"
                        }

                        WarningIndicator {
                            id: fault
                            warText: "FAULT"
                        }

                        WarningIndicator {
                            id: overSpeed
                            warText: "OVER\nSPEED"
                        }
                    }

                    TextCust {
                        id: textCust2
                        y: 60
                        color: Styles.blueDark
                        text: "Status"
                        anchors.horizontalCenterOffset: 0
                        anchors.horizontalCenter: parent.horizontalCenter
                        level: 2
                    }

                    TextCust {
                        id: textCust3
                        y: 60
                        color: Styles.blueDark
                        text: "CONTROL"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.horizontalCenterOffset: -331
                        level: 2
                    }

                    TextCust {
                        id: textCust4
                        y: 60
                        color: Styles.blueDark
                        text: "WARNINGS"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.horizontalCenterOffset: 333
                        level: 2
                    }




                }
                Connections{
                    target: EngineRender

                    function onApuSet(name, val){
                        switch(name){
                        case"fault":{
                            fault.status=val
                            break
                        }
                        case"lowOil":{
                            lowOilPress.status=val
                            break
                        }
                        case"fire":{
                            apuStatus.fire= val===1
                            break
                        }
                        case"apuRuning":{
                            apuStatus.running= val===1
                            break
                        }
                        case"maint":{
                            maint.status=val
                            break
                        }
                        case"overSpeed":{
                            overSpeed.status=val
                            break
                        }
                        case"startPos":{
                            apuControler.position=val
                            apuStatus.swichOnOff=val
                            break
                        }
                        case"temp":{
                            apuTemp.value=val
                            break
                        }
                        default:{}
                        }
                    }
                }
            }
        }

    }
    Rectangle {
        id: rightSide
        x: parent.width/2
        y:0
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"

        EngineData {
            id: engineData
            border.color: "#00ffffff"
            anchors.fill: parent
        }
    }
    Connections{
        target: ControlEngine
    }
    Connections{
        target: EngineRender

        function onEngSwichSet(name, val){
            switch(name){
            case "mix1":{
                eng1Idle.swich2stateAltVert.togled= val===0
                break
            }
            case"mix2":{
                eng2Idle.swich2stateAltVert.togled= val===0
                break
            }
            case"starter1":{
                eng1Starter.position=val
                break
            }
            case"starter2":{
                eng2Starter.position=val
                break
            }
            case"startSource":{
                ignition.position=val
                break
            }
            default:{}
            }
        }
    }

    HalfTransparentBorder {
        id: halfTransparentBorder
        width: 1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        grad2: "gray"
        vert: true
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}D{i:12}
D{i:13}D{i:14}D{i:3}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:23}D{i:24}D{i:25}D{i:26}
D{i:22}D{i:27}D{i:28}D{i:29}D{i:16}D{i:30}D{i:15}D{i:2}D{i:1}D{i:32}D{i:31}D{i:33}
D{i:34}D{i:35}
}
##^##*/
