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
        border.color: "#ffffff"

        Column {
            id: column
            anchors.fill: parent



            Item {
                id: engSetings
                height: 832
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Swich3pos {
                    id: ignition
                    x: 288
                    y: 240
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

                GuardedSwichAlt {
                    id: eng1Idle
                    x: 70
                    y: 626
                    width: 283
                    height: 153
                    anchors.left: parent.left
                    anchors.leftMargin: 8
                    swich2stateAlt.textHeight: 19
                    swich2stateAlt.textOff: "CUTOFF"
                    swich2stateAlt.textOn: "IDLE"
                    guard.onUnGuard: {guard.guarded=false}
                    guard.onGuard: {guard.guarded=true}
                    onButton1Clicked: {
                        ControlEngine.setMixure(1,0)
                    }
                    onButton2Clicked: {
                        ControlEngine.setMixure(1,1)
                        guard.guarded=true
                    }
                }

                GuardedSwichAlt {
                    id: eng2Idle
                    x: 589
                    y: 626
                    width: 280
                    height: 153
                    anchors.right: parent.right
                    anchors.rightMargin: 7
                    swich2stateAlt.textHeight: 19
                    swich2stateAlt.textOn: "IDLE"
                    swich2stateAlt.textOff: "CUTOFF"
                    guard.onUnGuard: {guard.guarded=false}
                    guard.onGuard: {guard.guarded=true}
                    onButton1Clicked: {
                        ControlEngine.setMixure(2,0)
                    }
                    onButton2Clicked: {
                        ControlEngine.setMixure(2,1)
                        guard.guarded=true
                    }
                }

                Text {
                    id: text7
                    x: 357
                    y: 163
                    color: "#00a8ff"
                    text: qsTr("IGNITION")
                    font.pixelSize: 25
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text5
                    x: 132
                    y: 586
                    color: "#00a8ff"
                    text: qsTr("ENGINE1 IDLE")
                    font.pixelSize: 25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -289
                }

                Text {
                    id: text6
                    x: 586
                    y: 586
                    color: "#00a8ff"
                    text: qsTr("ENGINE2 IDLE")
                    font.pixelSize: 25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: 291
                }

                Swich4posVertical {
                    id: eng2Starter
                    x: 659
                    y: 125
                    width: 140
                    height: 440
                    anchors.right: parent.right
                    anchors.rightMargin: 75
                    button1.onClicked: {ControlEngine.setIgnition(2,0)}
                    button2.onClicked: {ControlEngine.setIgnition(2,1)}
                    button3.onClicked: {ControlEngine.setIgnition(2,2)}
                    button4.onClicked: {ControlEngine.setIgnition(2,3)}
                }

                Swich4posVertical {
                    id: eng1Starter
                    y: 125
                    width: 140
                    height: 440
                    anchors.left: parent.left
                    anchors.leftMargin: 75
                    textWidth: 40
                    button1.onClicked: {ControlEngine.setIgnition(1,0)}
                    button2.onClicked: {ControlEngine.setIgnition(1,1)}
                    button3.onClicked: {ControlEngine.setIgnition(1,2)}
                    button4.onClicked: {ControlEngine.setIgnition(1,3)}
                }

                Text {
                    id: text8
                    x: 358
                    y: 69
                    color: "#00a8ff"
                    text: qsTr("ENGINE 1 START")
                    font.pixelSize: 25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -293
                }

                Text {
                    id: text9
                    x: 354
                    y: 69
                    color: "#00a8ff"
                    text: qsTr("ENGINE 2 START")
                    font.pixelSize: 25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: 291
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
            }

            Item {
                id: apu
                height: 228
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Rectangle {
                    id: apuModule
                    y: 0
                    height: 228
                    color: "#00ffffff"
                    border.color: "#ffffff"
                    border.width: 2
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0

                    ModuleDescription {
                        id: moduleDescription1
                        y: 0
                        anchors.left: parent.left
                        anchors.right: parent.right
                        description: "APU"
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                    }

                    Rectangle {
                        id: rectangle2
                        y: 45
                        height: 176
                        color: "#00ffffff"
                        border.color: "#006c6c6c"
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0

                        Row {
                            id: apuIndikators
                            x: 2
                            width: 873
                            height: 70
                            layoutDirection: Qt.LeftToRight

                            ApuStatus {
                                id: apuStatus
                                swichOnOff: 0
                                running: true
                                fire: false
                            }

                            InfoIndicator {
                                id: maint
                                description: "MAINT"
                            }

                            WarningIndicator {
                                id: lowOilPress
                                textHeight: 28
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

                        Verticalndicator {
                            id: apuTemp
                            x: 313
                            y: 114
                            width: 560
                            height: 61
                            maxVal: 110
                            minVal: 0
                        }

                        Swich3pos {
                            id: apuControler
                            y: 64
                            width: 313
                            anchors.left: parent.left
                            anchors.top: parent.top
                            anchors.bottom: parent.bottom
                            textWidth: 31
                            textPos3: "START"
                            textPos2: "ON"
                            anchors.leftMargin: 2
                            anchors.topMargin: 67
                            anchors.bottomMargin: 1

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

                    }

                    Text {
                        id: text3
                        y: 109
                        color: "#00a8ff"
                        text: qsTr("Temperature")
                        font.pixelSize: 25
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.horizontalCenterOffset: 152
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
        border.color: "#ffffff"

        EngineData {
            id: engineData
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
                    eng1Idle.swich2stateAlt.togled= val===1
                    break
                }
                case"mix2":{
                    eng2Idle.swich2stateAlt.togled= val===1
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
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}D{i:12}
D{i:13}D{i:14}D{i:3}D{i:17}D{i:20}D{i:21}D{i:22}D{i:23}D{i:24}D{i:19}D{i:25}D{i:26}
D{i:18}D{i:27}D{i:16}D{i:28}D{i:15}D{i:2}D{i:1}D{i:30}D{i:29}D{i:31}D{i:32}
}
##^##*/
